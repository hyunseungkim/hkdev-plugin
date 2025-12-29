#!/bin/bash
# =============================================================================
# Session Context Hook
# hkdev Plugin - SessionStart Event Hook
#
# Purpose: Display relevant context at session start
# - Current task status
# - Sprint progress
# - Pending workflow issues
#
# Safety Measures:
# - Recursion guard via environment variable
# - 5-second timeout on all operations
# - Read-only (no modifications)
# - Non-blocking exit (always exit 0)
# =============================================================================

# ===== RECURSION GUARD =====
if [ "${HKDEV_HOOK_RUNNING:-}" = "1" ]; then
    exit 0
fi
export HKDEV_HOOK_RUNNING=1

# ===== TIMEOUT WRAPPER =====
TIMEOUT_SECONDS=5
(
    sleep $TIMEOUT_SECONDS
    kill -9 $$ 2>/dev/null
) &
TIMEOUT_PID=$!
trap "kill $TIMEOUT_PID 2>/dev/null" EXIT

# ===== ERROR HANDLING =====
trap 'exit 0' ERR

# ===== PROJECT ROOT =====
PROJECT_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$PROJECT_ROOT" ]; then
    exit 0
fi
cd "$PROJECT_ROOT" || exit 0

# ===== DISPLAY FUNCTIONS =====

show_git_status() {
    echo "Git:"
    local branch
    branch=$(git branch --show-current 2>/dev/null || echo "N/A")
    echo "  Branch: $branch"

    local changes
    changes=$(git status --short 2>/dev/null | wc -l || echo 0)
    echo "  Uncommitted: $changes files"
}

show_current_task() {
    echo ""
    echo "Current Task:"

    if [ -f ".work/CURRENT_TASK.md" ]; then
        # Extract task ID and title
        head -5 .work/CURRENT_TASK.md 2>/dev/null | grep -E "^#|Task.*:" | head -2
    else
        echo "  No active task"
    fi
}

show_sprint_progress() {
    local work_dir=".work/tasks"

    echo ""
    echo "Sprint Progress:"

    if [ ! -d "$work_dir/backlog" ]; then
        echo "  No active sprints"
        return 0
    fi

    # Count sprints and tasks
    local sprint_count=0
    local total_backlog=0
    local total_completed=0

    while IFS= read -r -d '' sprint_dir; do
        local sprint_name
        sprint_name=$(basename "$sprint_dir")
        local task_count
        task_count=$(find "$sprint_dir" -name "TASK-*.md" 2>/dev/null | wc -l)

        if [ "$task_count" -gt 0 ]; then
            echo "  $sprint_name: $task_count tasks remaining"
            ((total_backlog += task_count)) || true
            ((sprint_count++)) || true
        fi
    done < <(find "$work_dir/backlog" -mindepth 1 -maxdepth 1 -type d -print0 2>/dev/null)

    if [ -d "$work_dir/completed" ]; then
        total_completed=$(find "$work_dir/completed" -name "TASK-*.md" 2>/dev/null | wc -l)
    fi

    if [ "$sprint_count" -eq 0 ]; then
        echo "  No active sprints"
    fi

    echo ""
    echo "  Total: $total_backlog backlog, $total_completed completed"
}

show_pending_issues() {
    local work_dir=".work/tasks"
    local issues=0

    echo ""
    echo "Pending Issues:"

    # Check for completed tasks in backlog
    if [ -d "$work_dir/backlog" ]; then
        while IFS= read -r -d '' task_file; do
            if grep -q "Status.*Complete\|Status.*✅" "$task_file" 2>/dev/null; then
                echo "  [!] Completed task in backlog: $(basename "$task_file")"
                ((issues++)) || true
            fi
        done < <(find "$work_dir/backlog" -name "TASK-*.md" -print0 2>/dev/null)
    fi

    # Check for empty sprint folders
    if [ -d "$work_dir/backlog" ]; then
        while IFS= read -r -d '' sprint_dir; do
            local task_count
            task_count=$(find "$sprint_dir" -name "TASK-*.md" 2>/dev/null | wc -l)
            if [ "$task_count" -eq 0 ]; then
                local md_count
                md_count=$(find "$sprint_dir" -name "*.md" 2>/dev/null | wc -l)
                if [ "$md_count" -le 1 ]; then
                    echo "  [!] Empty sprint folder: $(basename "$sprint_dir")"
                    ((issues++)) || true
                fi
            fi
        done < <(find "$work_dir/backlog" -mindepth 1 -maxdepth 1 -type d -print0 2>/dev/null)
    fi

    if [ "$issues" -eq 0 ]; then
        echo "  None"
    fi
}

# ===== MAIN EXECUTION =====

echo ""
echo "=== hkdev Session Context ==="
echo ""

show_git_status
show_current_task
show_sprint_progress
show_pending_issues

echo ""
echo "=== Ready ==="
echo ""

exit 0
