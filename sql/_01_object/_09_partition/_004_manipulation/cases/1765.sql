-- create a hash partition table  on smallint field and insert into this table values that query from another new create table of non partition and then drop tables

create table hash_test(id int not null ,
			 test_int int,
			 test_smallint smallint,
			 test_numeric numeric(38,10),
			 test_float float,
			 test_real real,
			 test_double double,
			 test_monetary monetary,
			 test_datetime timestamp,
                         primary key (id, test_smallint))
	PARTITION BY HASH(test_smallint)
        PARTITIONS 4;

insert into hash_test values( 1,1,1,1.952491373,1.040967,1.888960,1.438915955,1,'2007-01-01 09:00:00');
insert into hash_test values( 2,2,2,2.102201596,2.448271,2.309828,2.862653912,2,'2007-01-01 09:00:00');
insert into hash_test values( 3,3,3,3.500607386,3.276044,3.861596,3.511043858,3,'2007-01-01 09:00:00');
insert into hash_test values( 4,4,4,4.399696514,4.436700,4.363333,4.4,        4,'2007-01-01 09:00:00');
insert into hash_test values( 5,5,5,5.180252385,5.916737,5.624429,5.982398624,5,'2007-01-01 09:00:00');
insert into hash_test values( 6,6,6,6.180252385,6.916737,6.624429,6.982398624,6,'2007-01-01 09:00:00');
insert into hash_test values( 7,7,7,7.180252385,7.916737,7.624429,7.982398624,7,'2007-01-01 09:00:00');	
insert into hash_test values( 8,8,8,9.180252385,8.916737,8.624429,8.982398624,8,'2007-01-01 09:00:00');
insert into hash_test values( 9,9,9,9.180252385,9.916737,9.624429,9.982398624,9,'2007-01-01 09:00:00');
insert into hash_test values(10,10,10,10.180252385,10.916737,10.624429,10.982398624,10,'2007-01-01 09:00:00');
insert into hash_test values(11,11,11,11.952491373,11.040967,11.888960,11.438915955,11,'2007-01-01 09:00:00');
insert into hash_test values(12,12,12,12.102201596,12.448271,12.309828,12.862653912,12,'2007-01-01 09:00:00');
insert into hash_test values(13,13,13,13.500607386,13.276044,13.861596,13.511043858,13,'2007-01-01 09:00:00');
insert into hash_test values(14,14,14,14.399696514,14.436700,14.363333,14.4,        14,'2007-01-01 09:00:00');
insert into hash_test values(15,15,15,15.180252285,15.916737,15.624429,15.982398624,15,'2007-01-01 09:00:00');
insert into hash_test values(16,16,16,16.180252285,16.916737,16.624429,16.982398624,16,'2007-01-01 09:00:00');
insert into hash_test values(17,17,17,17.180252285,17.916737,17.624429,17.982398624,17,'2007-01-01 09:00:00');
insert into hash_test values(18,18,18,19.180252385,18.916737,18.624429,18.982398624,18,'2007-01-01 09:00:00');
insert into hash_test values(19,19,19,19.180252385,19.916737,19.624429,19.982398624,19,'2007-01-01 09:00:00');
insert into hash_test values(20,20,20,20.180252385,20.916737,20.624429,20.982398624,20,'2007-01-01 09:00:00');
insert into hash_test values(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2006-03-01 09:00:00');

create table hash_test2(id int not null ,
			 test_int int,
			 test_smallint smallint,
			 test_numeric numeric(38,10),
			 test_float float,
			 test_real real,
			 test_double double,
			 test_monetary monetary,
			 test_datetime timestamp,
                         primary key (id, test_smallint))
	PARTITION BY HASH(test_smallint)
        PARTITIONS 4;
insert into hash_test2 values(31,1,1,1.952491373,1.040967,1.888960,1.438915955,1,'2007-01-01 09:00:00');
insert into hash_test2 values(32,2,2,2.102201596,2.448271,2.309828,2.862653912,2,'2007-01-01 09:00:00');
insert into hash_test2 values(33,3,3,3.500607386,3.276044,3.861596,3.511043858,3,'2007-01-01 09:00:00');
insert into hash_test2 values(34,4,4,4.399696514,4.436700,4.363333,4.4,        4,'2007-01-01 09:00:00');
insert into hash_test2 values(35,5,5,5.180252385,5.916737,5.624429,5.982398624,5,'2007-01-01 09:00:00');
insert into hash_test2 values(36,6,6,6.180252385,6.916737,6.624429,6.982398624,6,'2007-01-01 09:00:00');
insert into hash_test2 values(37,7,7,7.180252385,7.916737,7.624429,7.982398624,7,'2007-01-01 09:00:00');	
insert into hash_test2 values(38,8,8,9.180252385,8.916737,8.624429,8.982398624,8,'2007-01-01 09:00:00');
insert into hash_test2 values(39,9,9,9.180252385,9.916737,9.624429,9.982398624,9,'2007-01-01 09:00:00');
insert into hash_test2 values(40,10,10,10.180252385,10.916737,10.624429,10.982398624,10,'2007-01-01 09:00:00');
insert into hash_test2 values(41,11,11,11.952491373,11.040967,11.888960,11.438915955,11,'2007-01-01 09:00:00');
insert into hash_test2 values(42,12,12,12.102201596,12.448271,12.309828,12.862653912,12,'2007-01-01 09:00:00');
insert into hash_test2 values(43,13,13,13.500607386,13.276044,13.861596,13.511043858,13,'2007-01-01 09:00:00');
insert into hash_test2 values(44,14,14,14.399696514,14.436700,14.363333,14.4,        14,'2007-01-01 09:00:00');
insert into hash_test2 values(45,15,15,15.180252285,15.916737,15.624429,15.982398624,15,'2007-01-01 09:00:00');
insert into hash_test2 values(46,16,16,16.180252285,16.916737,16.624429,16.982398624,16,'2007-01-01 09:00:00');
insert into hash_test2 values(47,17,17,17.180252285,17.916737,17.624429,17.982398624,17,'2007-01-01 09:00:00');
insert into hash_test2 values(48,18,18,19.180252385,18.916737,18.624429,18.982398624,18,'2007-01-01 09:00:00');
insert into hash_test2 values(49,19,19,19.180252385,19.916737,19.624429,19.982398624,19,'2007-01-01 09:00:00');
insert into hash_test2 values(50,20,20,20.180252385,20.916737,20.624429,20.982398624,20,'2007-01-01 09:00:00');
insert into hash_test2 values(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2006-03-01 09:00:00');
insert into hash_test select * from hash_test2;

select * from hash_test order by id;
select * from hash_test__p__p0 order by id;
select * from hash_test__p__p1 order by id;
select * from hash_test__p__p2 order by id;
select * from hash_test__p__p3 order by id;



drop table hash_test;
drop table hash_test2;
