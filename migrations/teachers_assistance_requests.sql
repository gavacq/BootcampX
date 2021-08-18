CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE,
  is_active BOOLEAN DEFAULT TRUE
);

CREATE TABLE assistance_requests (
  id SERIAL PRIMARY KEY,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
  created_at TIMESTAMP,
  started_at TIMESTAMP,
  completed_at TIMESTAMP,
  student_feedback TEXT,
  teacher_feedback TEXT
);