create table artists_genres (artist_id integer not null, genre_id integer not null, constraint idx primary key (artist_id, genre_id));
create table genres (id integer primary key, name text);
insert into genres (name) values ('Russian rock'), ('lyrics'), ('<Unknown>');
insert into artists_genres values (1,1), (3,1), (3,2);

select genres.name, count(artists.name), group_concat(artists.name,';') from genres left join artists_genres on genres.id=artists_genres.genre_id left join artists on artists_genres.artist_id=artists.rowid group by genres.id;
