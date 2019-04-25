CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(150) NOT NULL,
  last_name VARCHAR(150)
);

CREATE TABLE course (
  id SERIAL PRIMARY KEY,
  title VARCHAR(150) NOT NULL
);

CREATE TABLE teachers_assistant (
  id SERIAL PRIMARY KEY,
  student_id INT REFERENCES student(id) UNIQUE NOT NULL,
  course_id INT REFERENCES course(id) UNIQUE NOT NULL
);

CREATE TABLE grade (
  id SERIAL PRIMARY KEY,
  student_id INT REFERENCES student(id) NOT NULL,
  course_id INT REFERENCES course(id) NOT NULL,
  percent INT NOT NULL,
  passed BOOLEAN DEFAULT false
);

CREATE TABLE enrollment (
  id SERIAL PRIMARY KEY,
  student_id INT REFERENCES student(id) NOT NULL,
  course_id INT REFERENCES course(id) NOT NULL
);

INSERT INTO student (first_name , last_name)
VALUES
  ('Britta' , 'Perry'),
  ('Abed' , 'Nadir'),
  ('Jeff' , 'Winger'),
  ('Annie' , 'Edison'),
  ('Pierce' , 'Hawthorne'),
  ('Troy' , 'Barnes'),
  ('Shirley' , 'Bennett'),
  ('Alex' , 'Osbourne'),
  ('Magnitude' , null),
  ('Leonard' , 'Rodriquez'),
  ('Vaughn' , 'Miller'),
  ('Rich' , 'Stephenson'),
  ('Neil' , null),
  ('Garrett' , 'Lambert'),
  ('Todd' , 'Jacobson'),
  ('Rachel' , null),
  ('Eric' , 'Wisniewski'),
  ('Pavel' , 'Iwaszkiewicz'),
  ('Vicki' , 'Jenkins'),
  ('Mark' , 'Millot'),
  ('Linda' , 'Greene'),
  ('Buzz' , 'Foster'),
  ('Derrick' , 'Bidos'),
  ('Quendra' , null),
  ('Annie' , 'Kim'),
  ('Harry' , 'Jefferson'),
  ('Dave' , null);

INSERT INTO course (title)
VALUES
    ('Spanish 101'),
    ('Introduction to Film'),
    ('Social Psychology'),
    ('Advanced Criminal Law'),
    ('Football, Feminism and You'),
    ('Introduction to Statistics'),
    ('Home Economics'),
    ('Debate 109'),
    ('Environmental Science'),
    ('Politics ;)'),
    ('Comparative Religion'),
    ('Investigative Journalism'),
    ('Interpretive Dance'),
    ('Romantic Expressionism'),
    ('Communication Studies'),
    ('Physical Education'),
    ('Basic Genealogy'),
    ('Beginner Pottery'),
    ('The Science of Illusion'),
    ('Contemporary American Poultry'),
    ('The Art of Discourse'),
    ('Modern Warfare'),
    ('English as a Second Language'),
    ('Pascal`s Triangle Revisited');

INSERT INTO teachers_assistant (student_id , course_id)
VALUES 
    (3 , 1),
    (4 , 18),
    (2 , 2),
    (5 , 17),
    (22 , 10),
    (8 , 9);

INSERT INTO enrollment (student_id , course_id)
VALUES
    (1 , 1),
    (2 , 1),
    (3 , 1),
    (4 , 1),
    (5 , 1),
    (6 , 1),
    (7 , 1),
    (10 , 1),
    (1,5),
    (1,3),
    (1,9),
    (2,2),
    (2,11),
    (2,12),
    (3,3),
    (3,8),
    (3,10),
    (4,6),
    (4,8),
    (4,12),
    (4,18),
    (4,22),
    (4,24),
    (4,15),
    (5,17),
    (5,10),
    (6,5),
    (6,19),
    (6,16),
    (7,7),
    (7,11),
    (8,9),
    (9,15),
    (10,17),
    (12,20),
    (22,3),
    (22,4),
    (22,5),
    (22,6),
    (22,8),
    (22,10),
    (22,15),
    (22,22);

  