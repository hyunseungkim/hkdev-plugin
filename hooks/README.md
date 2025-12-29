# hkdev 플러그인 Hooks

## 개요

이 디렉토리에는 hkdev 플러그인용 Claude Code hooks가 포함되어 있습니다. Hooks는 특정 라이프사이클 이벤트에서 자동으로 실행되는 셸 스크립트입니다.

## 사용 가능한 Hooks

| Hook | 이벤트 | 용도 |
|------|--------|------|
| `session-context.sh` | SessionStart | 세션 컨텍스트 표시 (Git 상태, 현재 태스크, 스프린트 진행률) |
| `workflow-validator.sh` | Stop | 워크플로우 절차가 올바르게 준수되는지 검증 |

## 안전 조치

모든 hooks는 다음과 같은 안전 조치를 구현합니다:

### 1. 재귀 방지
```bash
if [ "${HKDEV_HOOK_RUNNING:-}" = "1" ]; then
    exit 0
fi
export HKDEV_HOOK_RUNNING=1
```

### 2. 타임아웃 보호
```bash
TIMEOUT_SECONDS=5
(
    sleep $TIMEOUT_SECONDS
    kill -9 $$ 2>/dev/null
) &
```

### 3. 비차단 종료
- 모든 hooks는 코드 0(성공)으로 종료
- 오류는 로그로 기록되지만 워크플로우를 차단하지 않음
- 읽기 전용 검증 (경고만 표시, 자동 수정 없음)

### 4. Git 루트 해석
```bash
PROJECT_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || true)"
cd "$PROJECT_ROOT" || exit 0
```

## 검증 항목

### workflow-validator.sh

일반적인 워크플로우 위반 사항을 검사합니다:

1. **백로그에 있는 완료된 태스크**
   - `.work/tasks/backlog/`에 "Complete" 또는 "✅"로 표시된 태스크 파일 감지
   - `.work/tasks/completed/`로 이동해야 함

2. **빈 스프린트 폴더**
   - 남은 태스크 파일이 없는 스프린트 폴더 감지
   - `sprint-overview.md`를 completed로 이동하고 폴더 삭제 필요

3. **고아 태스크 파일**
   - 스프린트 하위 폴더 없이 `completed/`에 직접 있는 태스크 파일 감지
   - 스프린트 하위 폴더로 정리 필요

## 수동 테스트

```bash
# 세션 컨텍스트 hook 테스트
bash .claude-plugin/hooks/session-context.sh

# 워크플로우 검증 hook 테스트
bash .claude-plugin/hooks/workflow-validator.sh
```

## 설정

Hooks는 `plugin.json`에 등록됩니다:

```json
{
  "hooks": {
    "SessionStart": [...],
    "Stop": [...]
  }
}
```

## 문제 해결

### Hook이 실행되지 않는 경우
1. 파일에 실행 권한이 있는지 확인: `chmod +x hooks/*.sh`
2. `plugin.json` hook 설정 확인
3. 스크립트의 문법 오류 확인

### 타임아웃 문제
- 기본 타임아웃: 5초
- 처리가 느린 경우 hooks가 자체 종료됨
- 워크플로우 차단 없음

### 재귀 감지
- 출력이 없으면 재귀 방지가 작동한 것일 수 있음
- `HKDEV_HOOK_RUNNING` 환경 변수 확인
