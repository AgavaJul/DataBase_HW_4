
# 1 ���������� ������������ � ������ �����

select genre_name, count(musician_id)
from genre g
join genre_musician gm on g.genre_id = gm.genre_id 
group by 1;


# 2 ���������� ������, �������� � ������� 2019-2020 �����

select count (at2.track_id) "����������"
from album_track at2 
join music_album ma on at2.music_album_id = ma.music_album_id 
where ma.year_of_release >= 2019 and ma.year_of_release <= 2020;

# 3 ������� ����������������� ������ �� ������� �������

select ma.music_album_name, count(mt.track_id) "���������� ������", avg(mt.duration)::time "������� �����������������"
from music_album ma 
join album_track at2 on at2.music_album_id = ma.music_album_id 
join music_track mt on at2.track_id = mt.track_id 
group by 1;

# 4 ��� �����������, ������� �� ��������� ������� � 2020 ����

select m.musician_name, ma.music_album_name, ma.year_of_release 
from musician m 
join musician_track mt on m.musician_id = mt.musician_id 
join album_track at2 on at2.track_id = mt.track_id 
join music_album ma on ma.music_album_id = at2.music_album_id 
where ma.year_of_release != 2020
group by 1, 2, 3;

# 5 �������� ���������, � ������� ������������ ���������� ����������� (�������� ����) - �������

select mc.music_collection_name 
from music_collection mc 
join track_collection tc on mc.music_collection_id = tc.music_collection_id 
join musician_track mt on tc.track_id = mt.track_id 
join musician m on m.musician_id = mt.musician_id 
where m.musician_name ilike '%�������%'

# ������, ��� ������� ������ � �������� ��, ������ ���� ������ �� ������ ��������� ����� ��� �������, ������� ������ ��������� �������� - ����,
# ��, � �������, ��� � ��������� album-track ������� musician_id ��� ������, ����������

create table musician_track (
musician_id int references musician (musician_id),
track_id int references music_track (track_id),
primary key (musician_id, track_id)
);

insert into musician_track (musician_id, track_id)
values (10, 1),
(10, 2),
(10, 3),
(10, 4),
(1, 5),
(1, 6), 
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11),
(2, 12),
(2, 13),
(3, 14),
(3, 15),
(3, 16),
(7, 17),
(7, 18),
(7, 19),
(8, 20),
(4, 21),
(4, 22),
(4, 23),
(10, 24),
(2, 25);

alter table album_track drop column musician_id;

# 6 �������� ��������, � ������� ������������ ����������� ����� 1 �����

select t."�������� �������"
from (select ma.music_album_name "�������� �������", g.genre_name "�������� �����"
from music_album ma 
join album_track at2 on at2.music_album_id = ma.music_album_id 
join musician_track mt2 on mt2.track_id = at2.track_id 
join genre_musician gm on gm.musician_id = mt2.musician_id 
join genre g on g.genre_id = gm.genre_id 
group by 1, 2) t
group by 1
having count(t."�������� �����") > 1


# 7 ������������ ������, ������� �� ������ � ��������

select mt.track_name
from music_track mt 
left join track_collection tc on mt.track_id = tc.track_id 
left join music_collection mc on tc.music_collection_id = mc.music_collection_id 
where mc.music_collection_name is null

# 8 �����������(-��), ����������� ����� �������� �� ����������������� ���� (������������ ����� ������ ����� ���� ���������)

select m.musician_name, mt.track_name, min(mt.duration) "duration"
from musician m 
join musician_track mt2 on mt2.musician_id = m.musician_id 
join music_track mt on mt.track_id = mt2.track_id 
where mt.duration = (select min(duration) from music_track mt3)
group by 1, 2

# 9 �������� ��������, ���������� ���������� ���������� ������

select ma.music_album_name
from (select music_album_id, count(track_id) "����������"
from album_track at2 
group by 1) t
join music_album ma on ma.music_album_id = t.music_album_id
where t."����������" = (select min(b.s) from (select music_album_id, count(track_id) s from album_track at3 group by 1) b)
group by 1 

