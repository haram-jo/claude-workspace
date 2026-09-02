# claude-workspace

haramjo님의 Claude Code 작업 공간입니다.

## 📁 폴더 구조

```
claude-workspace/
├── .env                 # 환경변수 (API 키 등) — .gitignore로 제외, 레포에는 안 올라감
├── .gitignore           # git에서 제외할 파일 목록 (.env, *.key, *.pem 등)
├── CLAUDE.md            # Claude Code 지침서 (보안 규칙, 소통 방식, 작업 원칙)
├── README.md            # 이 문서 — 폴더 구조 안내
├── SECURITY.md          # 🚨 비상 매뉴얼 (키 노출 의심 시 대응 절차)
├── docs/                # 문서 보관 폴더 (현재 비어있음)
└── tasks/
    ├── todo.md          # 오늘 할 일 체크리스트
    └── progress.md      # 작업 기록 (append-only, 지우지 않고 계속 추가)
```

## 📌 각 파일 역할

| 파일 | 용도 | 규칙 |
|---|---|---|
| `CLAUDE.md` | Claude Code가 매번 자동으로 읽는 지침서 | 직접 수정 가능, 내용 변경 시 이후 대화부터 반영 |
| `tasks/todo.md` | "지금 할 일" 목록 | 작업 시작 시 확인, 완료되면 체크 |
| `tasks/progress.md` | "한 일" 기록 | append-only — 새 내용은 항상 맨 아래 추가, 기존 내용 삭제 금지 |
| `SECURITY.md` | 키 노출 등 비상 상황 대응 매뉴얼 | 문제 생길 때만 참고 |
| `.env` | API 키·비밀번호 등 민감정보 | git에 절대 커밋 금지(.gitignore 처리됨), 항상 마스킹해서만 공유 |
| `.gitignore` | git 추적 제외 목록 | `.env`, 키 파일, credentials 등 민감 파일 패턴 관리 |

## 🔗 참고 (CLAUDE.md 기준)

- **오라클 SSH 키:** `~/.ssh/oracle-server.key`
- **오라클 서버 별칭:** `oracle-server` (SSH config 등록)
- **환경변수 파일:** `~/claude-workspace/.env`

## 🚀 사용 흐름

1. 작업 시작 → `tasks/todo.md` 확인/작성
2. 작업 진행 → 3단계 이상이면 계획부터 `todo.md`에 적고 승인 받기
3. 작업 완료 → 실제 동작 확인 후 `tasks/progress.md`에 요약 기록
4. 문제 발생(키 노출 등) → `SECURITY.md` 참고
