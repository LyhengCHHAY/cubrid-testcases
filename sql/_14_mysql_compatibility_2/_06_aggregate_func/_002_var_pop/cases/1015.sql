--test var_pop function with update statement

create class tb(
col1 int
);

insert into tb values(10);
insert into tb values(20);
insert into tb values(30);

update tb set col1=var_pop(col1) where col1=10;

drop class tb;
