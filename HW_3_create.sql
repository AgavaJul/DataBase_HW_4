CREATE database music;

create schema HW;

set search_path to HW;

create table genre (
genre_id serial primary key,
genre_name varchar (150) not null unique
);

create table musician (
musician_id serial primary key,
musician_name varchar (100) not null,
nickname varchar (100) not null unique
);

create table genre_musician (
genre_id int references genre (genre_id),
musician_id int references musician (musician_id),
primary key (genre_id, musician_id)
);

create table music_album (
music_album_id serial primary key,
music_album_name varchar (200) not null,
year_of_release int check (year_of_release > 0)
);

drop table music_track;

create table music_track (
track_id serial primary key,
track_name varchar (200) not null,
duration time without time zone not null
);

alter table music_track
alter column duration type time without time zone

drop table album_track;

create table album_track (
track_id int not null references music_track (track_id),
musician_id int references musician (musician_id),
music_album_id int references music_album (music_album_id),
primary key (track_id, musician_id)
);

create table track_collection (
music_collection_id int not null references music_collection (music_collection_id),
track_id int not null references music_track (track_id),
primary key (music_collection_id, track_id)
);


create table music_collection (
music_collection_id serial primary key,
music_collection_name varchar (200) not null,
year_of_release int not null
);
