declare 
	num number :=&num;
	c number (1);
	result integer :=0;
begin 
	for c in 1..num loop
		if mod(num,c)=0 then
			result:=result+c;
		end if;
	end loop;
	if result=2*num then
		dbms_output.put_line(num||' is Perfect');
	else
		dbms_output.put_line(num|| ' is not Perfect');
	end if;
end;
/		