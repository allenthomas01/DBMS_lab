declare
  num integer := &num; 
  first integer := 0;
  second integer := 1;
  temp integer;
  i number (1);
begin
  dbms_output.put_line(first);
  dbms_output.put_line(second);
  FOR i in 2..num-1 loop
    temp := second;
    second := first + second;
    first := temp;
    dbms_output.put_line(second);
  end loop;
end;
