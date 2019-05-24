CREATE DEFINER=`root`@`localhost` TRIGGER `empleados_BEFORE_INSERT` BEFORE INSERT ON `empleados` FOR EACH ROW BEGIN
declare fechaReg date;
declare fechaNac date;
if (new.fecha_reg is null) or(new.fecha_nac is null) then
signal sqlstate '45000' set message_text = '¡FALTAN DATOS!';
end if;
set fechaReg = new.fecha_reg;
set fechaNac = new.fecha_nac;
set new.NSS = genera_NSS(fechaReg,fechaNac);
END