-- Example minimal schema for Supabase/Postgres
create table if not exists essays (
  id uuid default gen_random_uuid() primary key,
  user_id uuid,
  title text,
  content text,
  status text,
  word_count int,
  created_at timestamptz default now()
);

create table if not exists reviewers (
  id uuid default gen_random_uuid() primary key,
  user_id uuid,
  name text,
  email text,
  credentials text,
  hourly_rate numeric,
  created_at timestamptz default now()
);

create table if not exists assignments (
  id uuid default gen_random_uuid() primary key,
  essay_id uuid references essays(id),
  reviewer_id uuid references reviewers(id),
  status text,
  assigned_at timestamptz default now()
);

create table if not exists corrections (
  id uuid default gen_random_uuid() primary key,
  essay_id uuid references essays(id),
  reviewer_id uuid,
  is_ai boolean default false,
  score_c1 int,
  score_c2 int,
  score_c3 int,
  score_c4 int,
  score_c5 int,
  total_score int,
  comments jsonb,
  created_at timestamptz default now()
);
