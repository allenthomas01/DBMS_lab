declare
	num number :=&num;
	c number (1);
	factorial integer :=1;
begin
	if num=0 then
		dbms_output.put_line('Factorial is ' || 1);
	elsif num=1 then
		dbms_output.put_line('Factorial is ' || 1);
	else
		for c in 1..num loop
			factorial:=c*factorial;
		end loop;
		dbms_output.put_line('Factorial is ' || factorial);
	end if;
end;
/	