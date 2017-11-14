create table bank1 (
	aid int NOT NULL primary Key,
	aname varchar(10),
	balance int
);

create table bank2 (
	aid int NOT NULL primary Key,
	aname varchar(10),
	balance int
);

insert into bank1 values(101,'user1',100);
insert into bank2 values(201,'user2',50);