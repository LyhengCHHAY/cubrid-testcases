--+ server-message on

-- normal: basic usage of a builtin function call

create or replace procedure t () as
begin
    dbms_output.put_line(RIGHT(NULL, NULL));
    dbms_output.put_line(RIGHT('', NULL));
    dbms_output.put_line(RIGHT('CUBRID', 0));
    dbms_output.put_line(RIGHT('CUBRID', 3));
    dbms_output.put_line(RIGHT('CUBRID', 3.2));
    dbms_output.put_line(RIGHT('CUBRID', -3.0));
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t();

drop procedure t;

--+ server-message off
