# dim_especialidade
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20001, "Cardiologia");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20002, "Oftalmologia");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20003, "Pneumologia");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20004, "Urologia");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20005, "Gastroenterologia");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20006, "Neurologia");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20007, "Medicina Interna");
INSERT INTO dim_especialidade(id_especialidade_original, descricao) VALUES (20008, "Oncologia");

# dim_modalidade
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("ECO", "Ecocardiograma");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("PES", "Prova de Esforco");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("RE", "Registo de Eventos");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("GA", "Endoscopia");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("CV", "Campos Visuais");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("OCT", "Ortografia");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("URO", "Uretroscopia");
INSERT INTO dim_modalidade(id_modalidade_original, descricao) VALUES ("ECG", "Electrocardiograma");

# dim_modulo
INSERT INTO dim_modulo(id_modulo_original, descricao) VALUES ("CON", "Consulta");
INSERT INTO dim_modulo(id_modulo_original, descricao) VALUES ("URG", "Urgencia");
INSERT INTO dim_modulo(id_modulo_original, descricao) VALUES ("INT", "Internamento");
INSERT INTO dim_modulo(id_modulo_original, descricao) VALUES ("HDI", "Hospital de Dia");
INSERT INTO dim_modulo(id_modulo_original, descricao) VALUES ("RAD", "Radiologia");

# dim_posto
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("EG2", "Electrocardiografia 2");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("EG1", "Electrocardiografia 1");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("EC2", "Ecocardiografia 2");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("EC1", "Ecocardiografia 1");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("PES", "Prova de Esforco");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("RE", "Registo de Eventos");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("GA1", "Endoscopia Alta 1");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("CV1", "Campos Visuais 01");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("CV2", "Campos Visuais 02");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("GA2", "Endoscopia Alta 2");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("OC1", "Oct 01");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("UR1", "Urectroscopias 01");
INSERT INTO dim_posto(id_posto_original, descricao) VALUES ("UR2", "Urectroscopias 02");

# dim_servico
INSERT INTO dim_servico(id_servico_original, descricao) VALUES (100, "Cardiologia");
INSERT INTO dim_servico(id_servico_original, descricao) VALUES (101, "Oftalmologia");
INSERT INTO dim_servico(id_servico_original, descricao) VALUES (102, "Pneumologia");
INSERT INTO dim_servico(id_servico_original, descricao) VALUES (103, "Urologia");
INSERT INTO dim_servico(id_servico_original, descricao) VALUES (104, "Gastroenterologia");

# dim_sexo
INSERT INTO dim_sexo(id_sexo_original, descricao) VALUES (0, "Desconhecido");
INSERT INTO dim_sexo(id_sexo_original, descricao) VALUES (1, "Masculino");
INSERT INTO dim_sexo(id_sexo_original, descricao) VALUES (2, "Feminino");

# dim_data
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-20',20,'Janeiro',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-21',21,'Janeiro',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-23',23,'Janeiro',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-24',24,'Janeiro',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-29',29,'Janeiro',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-30',30,'Janeiro',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-01-31',31,'Janeiro',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-01',1,'Fevereiro',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-02',2,'Fevereiro',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-03',3,'Fevereiro',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-04',4,'Fevereiro',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-05',5,'Fevereiro',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-06',6,'Fevereiro',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-07',7,'Fevereiro',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-08',8,'Fevereiro',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-09',9,'Fevereiro',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-10',10,'Fevereiro',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-11',11,'Fevereiro',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-12',12,'Fevereiro',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-13',13,'Fevereiro',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-14',14,'Fevereiro',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-15',15,'Fevereiro',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-16',16,'Fevereiro',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-17',17,'Fevereiro',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-18',18,'Fevereiro',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-19',19,'Fevereiro',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-20',20,'Fevereiro',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-21',21,'Fevereiro',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-22',22,'Fevereiro',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-23',23,'Fevereiro',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-24',24,'Fevereiro',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-25',25,'Fevereiro',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-26',26,'Fevereiro',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-27',27,'Fevereiro',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-02-28',28,'Fevereiro',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-01',1,'Março',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-02',2,'Março',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-03',3,'Março',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-04',4,'Março',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-05',5,'Março',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-06',6,'Março',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-07',7,'Março',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-08',8,'Março',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-09',9,'Março',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-10',10,'Março',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-11',11,'Março',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-20',20,'Março',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-21',21,'Março',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-22',22,'Março',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-23',23,'Março',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-24',24,'Março',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-25',25,'Março',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-26',26,'Março',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-27',27,'Março',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-28',28,'Março',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-29',29,'Março',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-30',30,'Março',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-03-31',31,'Março',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-01',1,'Abril',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-02',2,'Abril',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-03',3,'Abril',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-04',4,'Abril',2018,'Quarta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-05',5,'Abril',2018,'Quinta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-06',6,'Abril',2018,'Sexta');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-07',7,'Abril',2018,'Sábado');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-08',8,'Abril',2018,'Domingo');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-09',9,'Abril',2018,'Segunda');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-10',10,'Abril',2018,'Terça');
INSERT INTO `dim_data` (`valor`,`dia`,`mes`,`ano`,`dia_semana`) VALUES ('2018-04-11',11,'Abril',2018,'Quarta');