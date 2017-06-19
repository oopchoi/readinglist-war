-- CREATE SCHEMA IF NOT EXISTS "public";
-- CREATE USER IF NOT EXISTS postgres PASSWORD 'postgres';
-- ALTER USER postgres ADMIN TRUE;
-- GRANT ALL TO postgres;

create table Reader (
    id serial primary key,
    username varchar(25) unique not null,
    password varchar(25) not null,
    fullname varchar(50) not null
);

create table Book (
    id serial primary key,
    author varchar(50) not null,
    description varchar(1000) not null,
    isbn varchar(10) not null,
    title varchar(250) not null,
    reader_username varchar(25) not null,
    foreign key (reader_username) references Reader(username)
);

create sequence hibernate_sequence;

insert into Reader (username, password, fullname)
            values ('test', 'test', 'Tester');
