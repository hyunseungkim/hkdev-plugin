#!/bin/bash
# =============================================================================
# Workflow Validator Hook
# hkdev Plugin - Stop Event Hook
#
# Purpose: Validate that workflow procedures are correctly followed
# - Task completion: File moved to completed folder
# - Sprint completion: Empty backlog folder cleaned up
#
# Safety Measures:
# - Recursion guard via environment variable
# - 5-second timeout on all operations
# - Read-only validation (no auto-fix, warnings only)
# - Non-blocking exit (always exit 0)
# =============================================================================

# ===== RECURSION GUARD =====
# Prevent infinite loops if hook somehow triggers itself
if [ "${HKDEV_HOOK_RUNNING:-}" = "1" ]; then
    exit 0
fi
export HKDEV_HOOK_RUNNING=1

# ===== TIMEOUT WRAPPER =====
# Kill script if running too long
TIMEOUT_SECONDS=5
(
    sleep $TIMEOUT_SECONDS
    kill -9 $$ 2>/dev/null
) &
TIMEOUT_PID=$!
trap "kill $TIMEOUT_PID 2>/dev/null" EXIT

# ===== ERROR HANDLING =====
# Never block the workflow - always exit 0
trap 'exit 0' ERR

# ===== PROJECT ROOT =====
PROJECT_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || true)"
if [ -z "$PROJECT_ROOT" ]; then
    exit 0
fi
cd "$PROJECT_ROOT" || exit 0

# ===== VALIDATION FUNCTIONS =====

validate_task_completion() {
    local work_dir=".work/tasks"

    # Skip if .work doesn't exist
    [ ! -d "$work_dir" ] && return 0

    # Check for completed tasks still in backlog
    local issues=0

    if [ -d "$work_dir/backlog" ]; then
        # Find Task files marked as completed but still in backlog
        while IFS= read -r -d '' task_file; do
            if grep -q "Status.*Complete\|Status.*✅" "$task_file" 2>/dev/null; then
                echo "[WARN] Task marked complete but still in backlog: $(basename "$task_file")"
                echo "       -> Should be moved to: $work_dir/completed/"
                ((issues++)) || true
            fi
        done < <(find "$work_dir/backlog" -name "TASK-*.md" -print0 2>/dev/null)
    fi

    return 0
}

validate_sprint_cleanup() {
    local work_dir=".work/tasks"

    # Skip if .work doesn't exist
    [ ! -d "$work_dir/backlog" ] && return 0

    # Check for empty sprint folders in backlog
    while IFS= read -r -d '' sprint_dir; do
        # Count non-overview files
        local task_count
        task_count=$(find "$sprint_dir" -name "TASK-*.md" 2>/dev/null | wc -l)

        if [ "$task_count" -eq 0 ]; then
            # Check if only sprint-overview.md remains
            local file_count
            file_count=$(find "$sprint_dir" -name "*.md" 2>/dev/null | wc -l)

            if [ "$file_count" -le 1 ]; then
                echo "[WARN] Sprint completed but folder not cleaned: $(basename "$sprint_dir")"
                echo "       -> Move sprint-overview.md to completed/ and delete folder"
            fi
        fi
    done < <(find "$work_dir/backlog" -mindepth 1 -maxdepth 1 -type d -print0 2>/dev/null)

    return 0
}

validate_completed_structure() {
    local work_dir=".work/tasks/completed"

    # Skip if completed doesn't exist
    [ ! -d "$work_dir" ] && return 0

    # Check for Task files directly in completed (should be in sprint subfolder)
    local orphan_tasks
    orphan_tasks=$(find "$work_dir" -maxdepth 1 -name "TASK-*.md" 2>/dev/null | wc -l)

    if [ "$orphan_tasks" -gt 0 ]; then
        echo "[WARN] Found $orphan_tasks Task file(s) directly in completed/"
        echo "       -> Should be organized in sprint subfolders"
    fi

    return 0
}

# ===== MAIN EXECUTION =====

echo ""
echo "=== Workflow Validation ==="

validate_task_completion
validate_sprint_cleanup
validate_completed_structure

echo "=== Validation Complete ==="
echo ""

# Always exit successfully (non-blocking)
exit 0
