
CREATE USER repl_user REPLICATION LOGIN PASSWORD '${DB_REPL_PASSWORD}';

CREATE DATABASE ${DB_DATABASE};

\c db_bot;

CREATE TABLE IF NOT EXISTS phone_numbers (
    id SERIAL PRIMARY KEY,
    phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS email_addresses (
    id SERIAL PRIMARY KEY,
    email_address VARCHAR(255) NOT NULL
);

INSERT INTO email_addresses (email_address) VALUES ('xyz123@gmail.com'), ('dasd@mail.ru');
INSERT INTO phone_numbers (phone_number) VALUES ('+7 123 123 33 45'), ('+8-534-555-66-33');