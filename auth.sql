-- CREATE DATABASE auth

-- CREATE TABLE users (
--   id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--   email VARCHAR(100) NOT NULL UNIQUE,
--   password VARCHAR(100) NOT NULL,
--   created_at DATE NOT NULL
-- );

-- CREATE TABLE login (
--   id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--   user_id INTEGER NOT NULL REFERENCES users(id),
--   attempt_time DATE NOT NULL,
--   status BOOLEAN NOT NULL
-- )

-- CREATE TABLE sessions (
--   id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--   user_id INTEGER NOT NULL REFERENCES users(id),
--   token VARCHAR(100) NOT NULL UNIQUE,
--   login_id INTEGER NOT NULL REFERENCES login(id)
-- )

-- INSERT INTO users(email, password, created_at) VALUES
--   ('seedorf@gmail.com', 'inipassword123_', CURRENT_TIMESTAMP),
--   ('toure@gmail.com', '_inipassword123', CURRENT_TIMESTAMP),
--   ('alonso@gmail.com', '123_inipassword', CURRENT_TIMESTAMP);

-- ALTER TABLE session DROP COLUMN login_id

-- DROP TABLE login

-- CREATE TABLE roles (
--   id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--   name VARCHAR(20) NOT NULL
-- )

-- INSERT INTO roles(name) VALUES
-- ('Admin'),
-- ('User')

-- DELETE FROM users WHERE id = 1 OR  id = 2 OR  id=3

-- ALTER TABLE users ADD roles_id INTEGER NOT NULL REFERENCES roles(id)

-- INSERT INTO users(email, password, created_at, roles_id) VALUES
--   ('seedorf@gmail.com', 'inipassword123_', CURRENT_TIMESTAMP, 1),
--   ('toure@gmail.com', '_inipassword123', CURRENT_TIMESTAMP, 1),
--   ('alonso@gmail.com', '123_inipassword', CURRENT_TIMESTAMP, 2);

-- INSERT INTO sessions(user_id, token) VALUES
--   ('4', 'dh3F7iQTUjwJSdRTRA1yZ1osqSKLGoI5Bqjy4TDkPWST0rBo3OMK8bwhK4HWxCJM'),
--   ('5', 'evLO9zrdwgSvd6eXQvwkShmruYI0eKE9ePChCt4QGdQo3blDwuHdv3LTXvlxseIt'),
--   ('6', 'ayXHDHjgv9FvZHm04yxBOD3XC0fd9bC8pfJEeocIxbtHdWAkdLAuRZqGtjJAfoDS');

-- SELECT * from users
-- SELECT * from roles
-- SELECT * from sessions