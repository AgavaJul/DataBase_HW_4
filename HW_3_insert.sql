
insert into genre (genre_name)
values ('Jaz'),
('Pop'),
('Rock'),
('Kantry'),
('Disco')

insert into musician (musician_name, nickname)
values ('Michael Joseph Jackson', 'Michael Jackson'),
('Madonna Louise Ciccone', 'Madonna'),
('Земфира Талгатовна Рамазанова', 'Земфира'),
('Юлия Дмитриевна Чичерина', 'Чичерина'),
('Francis Albert Sinatra', 'Frank Sinatra'),
('Louis Daniel Armstrong', 'Louis Armstrong'),
('Nancy Sandra Sinatra', 'Nancy Sinatra'),
('Taylor Alison Swift', 'Taylor Swift'),
('Manfred Alois Segieth', 'Fancy'),
('Didier Marouani', 'Ecama')

insert into genre_musician (genre_id, musician_id)
values (1, 5),
(1, 6),
(2, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 7),
(4, 8),
(5, 9),
(5, 10)

insert into genre_musician (genre_id, musician_id)
values (3, 1);

insert into music_album (music_album_name, year_of_release)
values ('Symphonic Space Dream', 2006),
('Scream', 2017),
('Forever, Michael', 2010),
('True Blue', 2021),
('СПАСИБО', 2007),
('Nancy & Lee 3', 2004),
('willow', 2020),
('Течение', 2002)


insert into music_album (music_album_name, year_of_release)
values ('30 Years - The New Best Of', 2018)


insert into music_track (track_name, duration)
values ('Rima Song', '00:04:26'),
('From Angels to Raphael', '00:04:14'),
('Start', '00:04:31'),
('New York - Paris', '00:05:10'),
('Thriller', '00:05:57'),
('Unbreakable', '00:06:25'),
('Threatened', '00:04:19'),
('We`ve Got Forever', '00:03:12'),
('You Are There', '00:03:25'),
('Dapper Dan', '00:03:12'),
('La Isla Bonita', '00:04:02'),
('Jimmy Jimmy', '00:03:55'),
('White Heat', '00:04:40'),
('ГОСПОДА', '00:03:24'),
('1000 ЛЕТ', '00:04:10'),
('СНЕГ НАЧНЁТСЯ', '00:04:25'),
('After The Lovin', '00:03:01'),
('Loving You Loving Me', '00:03:47'),
('Pack Saddle Saloon', '00:04:03'),
('willow', '00:03:04'),
('В десятку', '00:03:34'),
('Сломала себя', '00:03:11'),
('Сама', '00:03:14')

insert into music_track (track_name, duration)
values ('Rima my Song', '00:04:26'),
('My White Heat', '00:04:40')


insert into album_track (track_id, musician_id, music_album_id)
values (1, 10, 1),
(2, 10, 1),
(3, 10, 1),
(4, 10, 1),
(5, 1, 2),
(6, 1, 2),
(7, 1, 2),
(8, 1, 3),
(9, 1, 3),
(10, 1, 3),
(11, 2, 4),
(12, 2, 4),
(13, 2, 4),
(14, 3, 5),
(15, 3, 5),
(16, 3, 5),
(17, 7, 6),
(18, 7, 6),
(19, 7, 6),
(20, 8, 7),
(21, 4, 8),
(22, 4, 8),
(23, 4, 8)

insert into music_collection (music_collection_name, year_of_release)
values ('never', 2015),
('first', 2016),
('one', 2021),
('da-da', 2018),
('collection', 2019),
('welcome', 2020),
('no-no', 2018),
('two', 2015)

insert into track_collection
values (1, 1),
(1, 2),
(1, 3),
(2, 5),
(2, 8),
(2, 15),
(3, 4),
(3, 3),
(3, 21),
(4, 18),
(4, 22),
(5, 7),
(5, 6),
(5, 17),
(6, 23),
(6, 20),
(6, 14),
(7, 1),
(7, 13),
(7, 22),
(8, 5),
(8, 9),
(8, 12),
(8, 16)

