create or replace procedure employe_information(v_records_updated_counter number)
is 
begin

--v_records_updated_counter number(10);
  for i in(select * from employe where date_of_relieving < SYSDATE())
  loop
  update employe set is_active = 0 where v_records_updated_counter = v_records_updated_counter + 1;
  dbms_output.put_line(i.date_of_relieving);
  end loop;
  
end;