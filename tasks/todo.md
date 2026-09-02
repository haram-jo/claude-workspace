# 오늘 할 일 (Todo)

> 이 파일은 "지금 할 일" 체크리스트입니다.
> 작업 시작 전 여기에 계획을 적고, 완료하면 체크(`[x]`) 표시하세요.
> 완료된 작업의 요약은 `progress.md`로 옮겨 적습니다.

---

## 2026-09-02

- [x] CLAUDE.md 규칙 숙지
- [x] tasks 폴더 + todo.md, progress.md 생성
- [x] SECURITY.md 비상 매뉴얼 작성
- [x] README.md로 폴더 구조 정리

---

## 다운로드 폴더 정리 (사용자 확정 계획)

- 대상: `~/Downloads` 바로 아래 파일만 (하위 폴더 7개는 손대지 않음)
- images/: png, jpg, jpeg, ico, gif, bmp, webp
- docs/: pdf, hwp, docx, doc, xlsx, xls, txt, md, pptx
- misc/: 나머지 전부 (zip, exe, msi, msix, html, jsx, conf, csv, json, sql, gz, ini, winmd, ktheme, 확장자 없음 등)
- desktop.ini는 이동하지 않음 (Windows 시스템 파일)
- 대상 폴더에 동일 파일명 있으면 기존 파일을 `.bak`으로 백업 후 이동 (덮어쓰기 금지)
- 중복 파일(이력서 (1)(2)(3) 등)은 삭제/병합하지 않고 전부 그대로 이동만 함
- 🚨 민감 파일 4개(api-key-*.txt, github-action-user_credentials.csv, 조하람_신분증.jpg, 조하람_통장사본.jpg)는 이동만 하고 내용 열람 안 함

- [x] images/docs/misc 폴더 생성
- [x] 파일 분류 이동 (안전 백업 규칙 적용)
- [x] 이동 결과 확인 (개수/용량)
- [x] progress.md에 기록

---

## 강남구 날씨·미세먼지 자동 저장 스크립트 (❌ 전체 삭제됨, 종료)

- 진행 이력: 절차 위반 롤백 → 재구축(계획 승인 후 진행) → 디스코드 웹훅 연동 추가 → 가독성 개선
- 사용자 요청으로 **전체 자동화 삭제** 완료 (2026-09-02)
  - 삭제됨: `scripts/weather_report.py`, `weather.txt`, `scripts/` 폴더, 작업 스케줄러 `GangnamWeatherReport`
  - `.env`의 `DISCORD_WEBHOOK_URL`은 남아있음 — 삭제 여부 확인 필요

---

## GitHub 연동 (계획 - 승인 대기)

- 확인된 상태: Git 설치됨(2.45.1), 사용자정보 이미 설정됨(HaramJo / harramaram@gmail.com), gh CLI 미설치, winget 사용 가능
- 저장소로 만들 폴더는 아직 미정 → 이번엔 "로그인 연동"까지만 진행, 폴더 연동은 나중에

- [x] winget으로 GitHub CLI(`gh`) 설치 (이미 설치되어 있었음, v2.98.0)
- [x] `gh auth login`으로 브라우저에서 GitHub 로그인 → 계정 `haram-jo`로 완료
- [x] `gh auth status`로 연동 확인 (https 프로토콜, repo/gist/read:org 권한)
- [x] progress.md에 기록

---

## claude-workspace GitHub 업로드 (계획 - 승인 대기)

- 조건(사용자 지정): private 레포, `.gitignore` 먼저 생성, README.md 구조 정리, 첫 커밋 메시지 "Initial setup"
- 현재 폴더 내용 확인함: `.env`(현재 내용 비어있음, 주석만), `CLAUDE.md`, `README.md`, `SECURITY.md`, `tasks/todo.md`, `tasks/progress.md` — 시크릿 없음 확인, `docs/`는 빈 폴더(git이 추적 안 함)

- [ ] `.gitignore` 생성 (`.env`, `*.key`, `*.pem`, `id_rsa`, `*credentials*` 등 제외)
- [ ] `README.md` 최신 구조로 업데이트
- [ ] `git init` + `git add` + `git commit -m "Initial setup"`
- [ ] `gh repo create`로 **private** 레포 생성 + push
- [ ] 결과 확인 (레포 URL, private 여부) 후 progress.md 기록

---

## 포트폴리오 웹페이지 제작 (계획 - 승인 대기)

- resume.pdf 확인 완료: 김수민, Marketing Specialist
  - 경력 2개: 테크노바(마케팅 매니저, 2022.03~현재), 리브랜드(마케팅 어시스턴트, 2019.03~2022.02)
  - 주요 프로젝트 3개, 보유 스킬, 자격증, 관심 분야, 연락처(이메일은 example.com 샘플 도메인)

- [x] 1단계: 페이지 구조 설계 — 히어로(이름/타이틀) → 경력사항(2개) → 주요 프로젝트(3개) → 보유 스킬 → 자격증/학력 → 연락처
- [x] 2단계: 단일 HTML 파일(`docs/portfolio.html`)로 제작 — 인라인 CSS만 사용, 외부 의존성 없이 더블클릭으로 브라우저에서 바로 열람 가능, 반응형 레이아웃 적용 (모바일 햄버거 메뉴 포함)
- [x] 3단계: `start` 명령으로 기본 브라우저에 실제로 열어 확인 (Claude in Chrome 미설치로 스크린샷은 못 찍음 — 사용자 직접 눈으로 최종 확인 필요)
- [x] 4단계: progress.md 기록

## 다음에 할 일 (미정)

- [ ] (예: .env 파일 만들고 API 키 등록)
- [ ] (예: 오라클 서버 SSH 접속 설정)
- [ ] GitHub 저장소로 만들 폴더 정하고 git init + push
