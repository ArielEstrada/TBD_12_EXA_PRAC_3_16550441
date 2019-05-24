CREATE DEFINER=`root`@`localhost` TRIGGER `empleados_BEFORE_UPDATE` BEFORE UPDATE ON `empleados` FOR EACH ROW BEGIN
set new.NSS = genera_NSS(new.fecha_reg,new.fecha_nac);
END