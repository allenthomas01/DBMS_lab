declare 
	num number := &num;
begin
	if mod(num,2)=0 then
		dbms_output.put_line('The number is even');
	else
		dbms_output.put_line('The number is odd');
	end if;
end;
/





