-- 방명록 messages 테이블 + RLS 정책
-- Supabase 프로젝트의 SQL Editor에 붙여넣고 실행하세요.

-- 1) 테이블 생성 (id, name, content, created_at)
create table public.messages (
  id uuid primary key default gen_random_uuid(),
  name varchar(50) not null check (char_length(trim(name)) > 0),
  content varchar(500) not null check (char_length(trim(content)) > 0),
  created_at timestamptz not null default now()
);

-- 최신순 정렬 조회를 빠르게 하기 위한 인덱스
create index messages_created_at_idx on public.messages (created_at desc);

-- 2) RLS(Row Level Security) 활성화
alter table public.messages enable row level security;

-- 3) 테이블 권한(GRANT) 부여
-- anon = 로그인 안 한 익명 방문자, authenticated = 로그인한 사용자
grant select on public.messages to anon, authenticated;

-- 작성(insert)은 name, content 컬럼만 허용 — id, created_at은 DB가 자동으로 채우므로
-- 방문자가 임의로 조작해서 넣을 수 없게 컬럼 단위로 제한합니다.
grant insert (name, content) on public.messages to anon, authenticated;

-- 4) RLS 정책(POLICY) — 누구나 읽기 + 누구나 쓰기
create policy "messages_select_public"
  on public.messages
  for select
  to anon, authenticated
  using (true);

create policy "messages_insert_public"
  on public.messages
  for insert
  to anon, authenticated
  with check (true);

-- update/delete 정책은 만들지 않았습니다 → 아무도 수정·삭제 불가 (관리는 Supabase 대시보드에서 직접)
