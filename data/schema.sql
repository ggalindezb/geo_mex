CREATE DATABASE postal_mex_20191122

CREATE TABLE states
(
  id int(5),
  name varchar(32)
)

CREATE TABLE municipalities
(
  id int(5),
  name varchar(128)
)

CREATE TABLE neighbourhoods
(
  id int(5),
  name varchar(128)
  zip_code varchar(5)
)
