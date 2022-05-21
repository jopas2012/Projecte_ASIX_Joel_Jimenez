-- DADES DE LA TAULA TEMPORADES
INSERT INTO `curses`.`temporades` (`temporada_id`, `nom`, `data_inici`, `data_fi`) VALUES ('1', '2021', '2020-1-1', '2021-12-31');
INSERT INTO `curses`.`temporades` (`temporada_id`, `nom`, `data_inici`, `data_fi`) VALUES ('2', '2022', '2021-1-1', '2022-12-31');
-- DADES DE LA TAULA CURSES
INSERT INTO `curses`.`curses` (`cursa_id`, `nom`, `temporada_id`, `poble`, `data_cursa`, `edicio`, `kmruta`, `temps_sortida`) VALUES ('1', 'Piston', '1', 'Palafolls', '2021-2-1', '1', '20', '16:00:00');
INSERT INTO `curses`.`curses` (`cursa_id`, `nom`, `temporada_id`, `poble`, `data_cursa`, `edicio`, `kmruta`, `temps_sortida`) VALUES ('2', 'Flor', '2', 'Blanes', '2022-4-15', '1', '25', '10:00:00');
-- INSERT INTO `curses`.`curses` (`cursa_id`, `nom`, `temporada_id`, `poble`, `data_cursa`, `edicio`, `kmruta`, `temps_sortida`) VALUES ('3', 'Canyó', '2', 'Blanes', '2022-1-7', '1', '30', '09:00:00');
-- DADES DE LA TAULA EQUIPS
INSERT INTO `curses`.`equips` (`equip_id`, `nom`, `esponsor`, `director`, `pressupost`) VALUES ('1', 'Sporting', 'Gfuel', 'Paco', '10000');
INSERT INTO `curses`.`equips` (`equip_id`, `nom`, `esponsor`, `director`, `pressupost`) VALUES ('2', 'Porcinos', 'sporting', 'Juan', '7000');
-- DADES DE LA TAULA CORREDORS
INSERT INTO `curses`.`corredors` (`corredor_id`, `nom`, `sexe`, `data_naix`, `equip_id`, `esponsor`) VALUES ('1', 'Juan', 'M', '1990-3-11', '1', 'Gfuel');
INSERT INTO `curses`.`corredors` (`corredor_id`, `nom`, `sexe`, `data_naix`, `equip_id`, `esponsor`) VALUES ('2', 'Lola', 'F', '2000-10-20', '1','Gfuel');
INSERT INTO `curses`.`corredors` (`corredor_id`, `nom`, `sexe`, `data_naix`, `equip_id`, `esponsor`) VALUES ('3', 'Manolo', 'M', '1997-5-12', '2','Sporting');
INSERT INTO `curses`.`corredors` (`corredor_id`, `nom`, `sexe`, `data_naix`, `equip_id`, `esponsor`) VALUES ('4', 'Cristina', 'F', '1998-2-5', '2','Sporting');
INSERT INTO `curses`.`corredors` (`corredor_id`, `nom`, `sexe`, `data_naix`, `equip_id`, `esponsor`) VALUES ('5', 'Usain', 'M', '1992-1-8', 1, NULL);
INSERT INTO `curses`.`corredors` (`corredor_id`, `nom`, `sexe`, `data_naix`, `equip_id`, `esponsor`) VALUES ('6', 'Leticia', 'F', '1980-3-22', 2, NULL);
-- DADES DE LA TAULA ESTADISTIQUES_CORREDORS_CURSES
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('1', '1', '', '16:23:12');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('2', '1', '', '16:20:40');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('3', '1', '', '16:35:33');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('4', '1', '', '16:22:45');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('1', '2', '', '10:40:50');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('2', '2', '', '10:42:08');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('3', '2', '', '10:49:20');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('4', '2', '', '10:51:03');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('5', '2', '', '10:39:48');
INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('6', '2', '', '10:42:10');
-- INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('1', '3', '', '09:32:10');
-- INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('2', '3', '', '09:34:02');
-- INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('3', '3', '', '09:41:26');
-- INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('4', '3', '', '09:31:53');
-- INSERT INTO `curses`.`estadistiques_corredors_curses` (`corredor_id`, `cursa_id`, `temps_sortida`, `temps_meta`) VALUES ('5', '3', '', '09:36:09');
-- DADES DE LA TAULA GUANYADORS
INSERT INTO `curses`.`guanyadors` (`corredor_id`, `cursa_id`, `temps_total`) VALUES ('5', '2', '10:39:48');
INSERT INTO `curses`.`guanyadors` (`corredor_id`, `cursa_id`, `temps_total`) VALUES ('2', '1', '16:20:40');
