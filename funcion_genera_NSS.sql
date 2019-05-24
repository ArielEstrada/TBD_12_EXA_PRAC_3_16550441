CREATE DEFINER=`root`@`localhost` FUNCTION `genera_NSS`(fechaReg date, fechaNac date) RETURNS text CHARSET utf8mb4
BEGIN
declare NSS text;
declare office_seg int;
declare off_seg int;
declare regist_seg int;
declare reg_seg int;
declare nacim_seg int;
declare nac_seg int;
declare numIMSS_seg int;
declare dig_verif int;
declare consec int;
declare ulti int;
set office_seg = floor(rand()*100);
set off_seg = concat(office_seg);
if office_seg <10 then
	set off_seg = concat('0',office_seg);
end if;
set regist_seg = year(fechaReg);
set reg_seg = right(concat(regist_seg),2);
set nacim_seg = year(fechaNac);
set nac_seg = right(concat(nacim_seg),2);

select max(consecutivo) into consec from consecutivos;
set consec = consec + 1;
insert into consecutivos values(consec);

set numIMSS_seg = concat(consec);
set ulti = digito_verificador(off_seg,reg_seg,nac_seg,numIMSS_seg);
set NSS = concat(off_seg,'-',reg_seg,'-',nac_seg,'-',numIMSS_seg,'-',ulti);

RETURN NSS;
END