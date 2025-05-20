CREATE TABLE payments (
  id SERIAL PRIMARY KEY,
  user_id INT,
  amount NUMERIC(10,2),
  created_at TIMESTAMP DEFAULT NOW()
);
