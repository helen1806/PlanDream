CREATE TABLE internships (
    id SERIAL PRIMARY KEY,
    company VARCHAR(50) NOT NULL,
    role VARCHAR(200) NOT NULL,
    location VARCHAR(150),
    opportunity VARCHAR(50) DEFAULT 'Internship',
    eligibility TEXT,
    age_range VARCHAR(50),
    link TEXT NOT NULL,
    source VARCHAR(100)
);


create table jobs(id serial PRIMARY KEY,company VARCHAR(500) NOT NULL, role VARCHAR(200),location
VARCHAR(150), opportunity varchar(50) default 'job', eligibility Text,age_range varchar(50),link text,source varchar(100), duration varchar(200),mode varchar(200));

CREATE TABLE fellowships (
    id SERIAL PRIMARY KEY,
    organization VARCHAR(200) NOT NULL,
    fellowship_name VARCHAR(300) NOT NULL,
    opportunity VARCHAR(100) DEFAULT 'Fellowship',
    location VARCHAR(150),
    eligibility TEXT,
    age_range VARCHAR(50),
    link TEXT NOT NULL,
    source VARCHAR(200)
);
CREATE TABLE competitions (
    id SERIAL PRIMARY KEY,
    organization VARCHAR(200) NOT NULL,
    competition_name VARCHAR(300) NOT NULL,
    opportunity VARCHAR(100) DEFAULT 'Competition / Skill-building',
    location VARCHAR(150),
    eligibility TEXT,
    age_range VARCHAR(50),
    link TEXT NOT NULL,
    source VARCHAR(200)
);

CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    organization VARCHAR(200) NOT NULL,
    event_name VARCHAR(300) NOT NULL,
    opportunity VARCHAR(100) DEFAULT 'Career / Learning Event',
    location VARCHAR(250),
    eligibility TEXT,
    date_time TEXT,
    description TEXT,
    link TEXT NOT NULL,
    source VARCHAR(200)
);

