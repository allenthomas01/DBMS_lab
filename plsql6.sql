declare
   num1 number := &num1;
   num2 number := &num2;
   operator varchar2(1) := '&operator';
   result number;
begin
   if operator = '*' then
      result := num1 * num2;
   elsif operator = '-' then
      result := num1 - num2;
   elsif operator = '+' then
      result := num1 + num2;
   elsif operator = '/' then
      result := num1 / num2;
   else
      dbms_output.put_line('Invalid operator');
      result := 0;
   end if;

   dbms_output.put_line('Result: ' || result);
end;
/