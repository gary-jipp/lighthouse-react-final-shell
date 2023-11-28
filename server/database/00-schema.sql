DROP TABLE IF EXISTS items CASCADE;

CREATE TABLE items (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(32) NOT NULL
);

CREATE TABLE dog_breeds (
  id SERIAL PRIMARY KEY,
  image_link TEXT,
  good_with_children SMALLINT,
  good_with_other_dogs SMALLINT,
  shedding SMALLINT,
  grooming SMALLINT,
  drooling SMALLINT,
  coat_length SMALLINT,
  good_with_strangers SMALLINT,
  playfulness SMALLINT,
  protectiveness SMALLINT,
  trainability SMALLINT,
  energy SMALLINT,
  barking SMALLINT,
  max_height_male SMALLINT,
  max_height_female SMALLINT,
  max_weight_male SMALLINT,
  max_weight_female SMALLINT,
  min_height_male SMALLINT,
  min_height_female SMALLINT,
  min_weight_male SMALLINT,
  min_weight_female SMALLINT,
  name VARCHAR(50) NOT NULL,
  description TEXT

);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE NOT NULL,
  password_hash TEXT NOT NULL
);

CREATE TABLE generated_photo_index (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  photo_link TEXT
);

CREATE TABLE generated_breeds (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  generated_name VARCHAR(50) NOT NULL,
  generated_photo_link INTEGER REFERENCES generated_photo_index(id) ON DELETE CASCADE,
  good_with_children SMALLINT,
  good_with_other_dogs SMALLINT,
  shedding SMALLINT,
  grooming SMALLINT,
  drooling SMALLINT,
  coat_length SMALLINT,
  good_with_strangers SMALLINT,
  playfulness SMALLINT,
  protectiveness SMALLINT,
  trainability SMALLINT,
  energy SMALLINT,
  barking SMALLINT,
  max_height_male SMALLINT,
  max_height_female SMALLINT,
  max_weight_male SMALLINT,
  max_weight_female SMALLINT,
  min_height_male SMALLINT,
  min_height_female SMALLINT,
  min_weight_male SMALLINT,
  min_weight_female SMALLINT,
  description TEXT

);

CREATE TABLE liked_generated_breeds (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  generated_breeds_id INTEGER REFERENCES generated_breeds(id) ON DELETE CASCADE,
  like_status BOOLEAN
);

CREATE TABLE new_breed_queries (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  generated_breeds_id INTEGER REFERENCES generated_breeds(id) ON DELETE CASCADE,
  breed_one INTEGER REFERENCES dog_breeds(id) ON DELETE CASCADE,
  breed_two INTEGER REFERENCES dog_breeds(id) ON DELETE CASCADE
);

