--index on 14 columns, including null values

drop table if exists t;
create table t(a1 int, a2 int, a3 int,
	b1 char(10), b2 int, b3 smallint, b4 varchar(10), b5 date, b6 float, b7 int, b8 string,
	b9 timestamp, b10 double, b11 int, b12 bit(10), b13 enum('a', 'b', 'c'), b14 varchar
);

insert into t values(1, 1, 1, 'a', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(2, 1, 1, 'a', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(3, 2, 1, 'a', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(4, 2, 1, 'a', 1, 1, null, '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(5, 1, 1, 'b', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(6, 1, 1, 'b', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(7, 1, 1, 'c', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(8, 1, 1, 'c', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(9, 1, 1, 'd', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(10, 1, 1, 'd', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(11, 1, 1, 'e', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(12, 1, 1, 'e', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(13, 1, 1, 'f', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(14, 1, 1, 'f', 1, 1, 'a', '2013-11-11', 1, null, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(15, 1, 1, 'g', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);
insert into t values(16, 1, 1, 'g', 1, 1, 'a', '2013-11-11', 1, 1, 'a', '2013-11-11 11:11:11', 1, 1, B'1010', 'a', null);

create index idx on t(a2, b1, b2, b3, b4, b5, b6, b7, b8, b10, b11, b12, b13, b14);

update statistics on t with fullscan;

--test: show index
show index in t;

--test: index_cardinality
select index_cardinality('dba.t', 'idx', 0);
select index_cardinality('dba.t', 'idx', 1);
select index_cardinality('dba.t', 'idx', 2);
select index_cardinality('dba.t', 'idx', 3);
select index_cardinality('dba.t', 'idx', 4);
select index_cardinality('dba.t', 'idx', 5);
select index_cardinality('dba.t', 'idx', 6);
select index_cardinality('dba.t', 'idx', 7);
select index_cardinality('dba.t', 'idx', 8);
select index_cardinality('dba.t', 'idx', 9);
select index_cardinality('dba.t', 'idx', 10);
select index_cardinality('dba.t', 'idx', 11);
select index_cardinality('dba.t', 'idx', 12);
select index_cardinality('dba.t', 'idx', 13);
select index_cardinality('dba.t', 'idx', 14);


drop table t;
