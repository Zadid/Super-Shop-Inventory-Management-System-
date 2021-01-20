

SET SERVEROUTPUT ON;


create or replace trigger trigger_log
after insert on product@site_link2
begin
	dbms_output.put_line('Product data inserted');
end;
/
create or replace trigger trigger_log2
after insert on productinfo@site_link2
begin
	dbms_output.put_line('ProductInfo data inserted');
end;
/


/*
create or replace trigger trigger_log
after insert
on student
for each row

begin
	insert into log_insert
	values(:new.snum, sysdate);
end;
/
*/

/*
create or replace trigger trigger_log
after update or delete
on student
for each row

begin
	insert into log_updel
	values(:old.age, :new.age, sysdate);
end;
/
*/
/*create or replace trigger trigger_log
after update or delete
of age
on student
for each row

begin
	insert into log_updel
	values(:old.age, :new.age, sysdate);
end;
/
*/

/*
create or replace trigger trigger_log
before update or delete
of age
on student
for each row

begin
	-- write the code
end;
/
*/