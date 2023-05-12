declare
	num number :=&num;
	c number (1);
	flag number :=0;
begin
	if num=2 then
		dbms_output.put_line(num||' is prime');
	elsif num=3 then
		dbms_output.put_line(num||' is prime');
	else
		for c in 2..(num/2) loop
			if mod(num,c)=0 then
				dbms_output.put_line(num || ' is not prime');
				flag:=1;
				exit;
			end if;
		end loop;
		if flag=0 then 
			dbms_output.put_line(num|| ' is prime');
		end if;
	end if;
end;
/		