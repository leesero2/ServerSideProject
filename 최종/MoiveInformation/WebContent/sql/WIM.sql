create table FREE(
     freeNumber int not null primary key auto_increment ,
     freeTitle varchar(50) not null,
     freeContent varchar(400) not null,
     freeTime datetime not null,
     readcount int default 0,
     passwd varchar(40) not null,
     writer varchar(100) not null,
     
     FOREIGN KEY(writer) REFERENCES Login(id)
);

create table MOVIE(
	movieNumber int not null primary key auto_increment,
	movieTitle varchar(100) not null,
	movieActor1 varchar(50) not null,
	movieActor2 varchar(50) not null,
	movieActor3 varchar(50) not null,
	movieActorPhoto1 varchar(100) default 'nothing.jpg',
	movieActorPhoto2 varchar(100) default 'nothing.jpg',
	movieActorPhoto3 varchar(100) default 'nothing.jpg',
	movieScore varchar(10) not null,
	moviePoster varchar(100) default 'nothing.jpg',
	movieStory text not null,
	movieOpen varchar (20) not null,
	movieDirector varchar (40) not null
);

create table REVIEW(
     reviewNumber int not null primary key auto_increment ,
     reviewMovieTitle varchar(50) not null,
     reviewContent varchar(400) not null,
     reviewTime datetime not null,
     readcount int default 0,
     passwd varchar(40) not null,
     writer varchar(100) not null,
     
     FOREIGN KEY(writer) REFERENCES Login(id)
);

drop table FREE;

drop table MOVIE;