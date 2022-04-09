CREATE TABLE IF NOT EXISTS user
(
    id           SERIAL PRIMARY KEY,
    bio          TEXT,
    created_date DATETIME,
    email        VARCHAR(255) UNIQUE,
    lastname     VARCHAR(255) NOT NULL,
    name         VARCHAR(255) NOT NULL,
    password     VARCHAR(3000),
    username     VARCHAR(255) UNIQUE
);

CREATE TABLE IF NOT EXISTS user_role
(
    user_id BIGINT NOT NULL REFERENCES user (id),
    roles   INTEGER
);

CREATE TABLE IF NOT EXISTS post
(
    id           SERIAL PRIMARY KEY,
    caption      VARCHAR(255),
    created_date DATETIME,
    likes        INTEGER,
    location     VARCHAR(255),
    title        VARCHAR(255),
    user_id      BIGINT REFERENCES user (id)
);

CREATE TABLE IF NOT EXISTS post_liked_users
(
    post_id     BIGINT NOT NULL REFERENCES post (id),
    liked_users VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS comment
(
    id           SERIAL PRIMARY KEY,
    created_date DATETIME,
    message      TEXT         NOT NULL,
    user_id      BIGINT       NOT NULL,
    username     VARCHAR(255) NOT NULL,
    post_id      BIGINT REFERENCES post (id)

);

CREATE TABLE IF NOT EXISTS image_model
(
    id          SERIAL PRIMARY KEY,
    image_bytes LONGBLOB,
    name        VARCHAR(255) NOT NULL,
    post_id     BIGINT,
    user_id     BIGINT
);
