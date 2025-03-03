--+ server-message on

-- normal: local function with a declaration in its declaration part


create or replace procedure t(i int) as
    function poo return int as
        j int := i;
    begin
        return i;
    end;
begin
    dbms_output.put_line('poo=' || poo);
end;

select count(*) from db_stored_procedure where sp_name = 't';
select count(*) from db_stored_procedure_args where sp_name = 't';

call t(7);

drop procedure t;


--+ server-message off
