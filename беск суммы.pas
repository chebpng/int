var eps, sum, f, x: real;
       k: integer;
begin
   f := x; sum := f; k := 2;
   while abs(f) >= eps do
     begin
       f := k * (x ** k);
       sum := sum + f;
       k := k + 1;
    end;
end.