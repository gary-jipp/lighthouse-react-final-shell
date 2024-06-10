CREATE TABLE if not exists items (
    id SERIAL NOT NULL,
    name VARCHAR(255),
    created TIMESTAMP with time zone DEFAULT now() NOT NULL
);

INSERT into items (name) values
  ('Item 1'),
  ('Item 2'),
  ('Item 3'),
  ('Item 4');