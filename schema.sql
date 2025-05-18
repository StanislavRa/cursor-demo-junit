docker exec -i demo_c_postgres psql -U app -d app <<'SQL'
CREATE TABLE payments (
  id          serial PRIMARY KEY,
  user_id     int,
  amount      numeric(10,2),
  created_at  timestamp default now()
);
\q
SQL