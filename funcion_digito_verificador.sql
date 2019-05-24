CREATE DEFINER=`root`@`localhost` FUNCTION `digito_verificador`(numOf int, annioIns int, annioNac int, numConsec int) RETURNS int(11)
BEGIN
declare reg int;
declare numero1 int;
declare numero2 int;
declare n2 int;
declare numero3 int;
declare numero4 int;
declare n4 int;
declare numero5 int;
declare numero6 int;
declare n6 int;
declare numero7 int;
declare numero8 int;
declare axNum8 int;
declare n8 int;
declare numero9 int;
declare axNum9 int;
declare numero10 int;
declare n10 int;

declare aux1 int;
declare aux2 int;
declare aux3 int;
declare aux4 int;
declare aux5 int;
declare aux6 int;
declare aux7 int;
declare aux8 int;
declare aux9 int;
declare aux10 int;
declare aux11 int;
declare aux12 int;
declare aux13 int;
declare aux14 int;
declare aux15 int;

declare op1 double;
declare op2 int;

set numero1 = left(numOf,1);
set numero2 = right(numOf,1);
set numero3 = left(annioIns,1);
set numero4 = right(annioIns,1);
set numero5 = left(annioNac,1);
set numero6 = right(annioNac,1);
set numero7 = left(numConsec,1);
set axNum8 = left(numConsec,2);
set numero8 = right(axNum8,1);
set axNum9 = right(numConsec,2);
set numero9 = left(axNum9,1);
set numero10 = right(numConsec,1);

set n2 = numero2 * 2;
set aux3 = n2;
set n4 = numero4 * 2;
set aux6 = n4;
set n6 = numero6 * 2;
set aux9 = n6;
set n8 = numero8 * 2;
set aux12 = n8;
set n10 = numero10 * 2; 
set aux15 = n10;
if n2 > 10 then
	set aux1 = right(n2,1);
    set aux2 = left(n2,1);
    set aux3 = aux1 + aux2;
end if;
if n4 > 10 then
	set aux4 = right(n4,1);
    set aux5 = left(n4,1);
    set aux6 = aux4 + aux5;
end if;
if n6 > 10 then
	set aux7 = right(n6,1);
    set aux8 = left(n6,1);
    set aux9 = aux9 + aux10;
end if;
if n8 > 10 then
	set aux10 = right(n8,1);
    set aux11 = left(n8,1);
    set aux12 = aux10 + aux11;
end if;
if n10 > 10 then
	set aux13 = right(n10,1);
    set aux14 = left(n10,1);
    set aux15 = aux13 + aux14;
end if;

set reg = numero1 + aux3 + numero3 + aux6 + numero5 + aux9 + numero7 + aux12 + numero9 + aux15;

set op1 = reg mod 10;
set op2 = 10 - op1;
RETURN op2;
END