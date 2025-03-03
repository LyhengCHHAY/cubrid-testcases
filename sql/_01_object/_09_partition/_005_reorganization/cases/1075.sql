-- create table of range partition on char field having boundary values and maxvalue and split across 3rd partition

create table range_test(id int not null  ,
			test_int int,
			test_char char(50),
			test_varchar varchar(2000),
			test_datetime timestamp,primary key(id,test_char))
PARTITION BY RANGE (test_char) (
    PARTITION p0 VALUES LESS THAN ('ddd'),
    PARTITION p1 VALUES LESS THAN ('ggg'),
    PARTITION p2 VALUES LESS THAN ('kkk'),
    PARTITION p7 VALUES LESS THAN MAXVALUE
);


insert into range_test values (1,1,'aaa','aaa','2006-01-01 09:00:00');
insert into range_test values (2,2,'bbb','bbb','2006-01-02 09:00:00');
insert into range_test values (3,3,'ccc','ccc','2006-01-03 09:00:00');
insert into range_test values (4,11,'ddd','ddd','2006-02-01 09:00:00');
insert into range_test values (5,12,'eee','eee','2006-02-02 09:00:00');
insert into range_test values (6,13,'fff','fff','2006-02-03 09:00:00');
insert into range_test values (7,21,'ggg','ggg','2006-03-01 09:00:00');
insert into range_test values (8,22,'hhh','hhh','2006-03-02 09:00:00');
insert into range_test values (9,23,'iii','iii','2006-03-03 09:00:00');
insert into range_test values (10,31,'jjj','jjj','2006-04-01 09:00:00');


ALTER TABLE range_test REORGANIZE PARTITION p2 INTO ( 
PARTITION p3 VALUES LESS THAN ('iii'),
PARTITION p4 VALUES LESS THAN ('kkk'));

select * from db_partition where class_name = 'range_test' order by partition_name;
select * from range_test order by 1,2;
select * from range_test__p__p0 order by 1,2;
select * from range_test__p__p1 order by 1,2;

select * from range_test__p__p3 order by 1,2;
select * from range_test__p__p4 order by 1,2;
select * from range_test__p__p7 order by 1,2;
drop table range_test;
