CREATE DATABASE General;

USE General;

DROP TABLE IF EXISTS tenants;

CREATE TABLE tenants (
  id SERIAL NOT NULL,
  name varchar(100) NOT NULL
);
INSERT INTO tenants VALUES (1,'TenantA'),(2,'TenantB');


CREATE DATABASE TenantA;
USE TenantA;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL NOT NULL,
  username varchar(100) NOT NULL
);
INSERT INTO users VALUES (1,'userA'),(2,'userB');


CREATE DATABASE TenantB;
USE TenantB;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL NOT NULL,
  username varchar(100) NOT NULL
);
INSERT INTO users VALUES (1,'userA'),(2,'userC');
