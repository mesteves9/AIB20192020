/* RESOLUCAO DA FICHA 2 */

/** QUESTAO 4 **/

/* ALINEA A */
SELECT nome AS nome_medico FROM Clinica.MEDICO
WHERE idade(data_inicio_servico)>10;

/* ALINEA B */
SELECT nome AS nome_medico, designacao AS nome_especialidade FROM Clinica.MEDICO med, Clinica.ESPECIALIDADE esp
WHERE med.especialidade = esp.id_especialidade;

/* ALINEA C */
SELECT nome AS nome_medico, idade(data_nascimento) AS idade_medico FROM Clinica.MEDICO med, Clinica.ESPECIALIDADE esp
WHERE idade(data_nascimento)>40 AND designacao='Clinica Geral' AND med.especialidade = esp.id_especialidade; 

/* ALINEA D */
SELECT distinct med.nome AS nome_medico, idade(med.data_inicio_servico) AS anos_servico_medico FROM Clinica.MEDICO med, Clinica.CONSULTA con, Clinica.PACIENTE pac
WHERE idade(med.data_nascimento)>50 AND med.id_medico=con.id_medico
AND med.id_medico IN (SELECT id_medico FROM Clinica.CONSULTA WHERE date_format(data_hora,'%H')>=12
AND con.id_paciente=pac.id_paciente AND id_paciente IN (SELECT id_paciente FROM Clinica.PACIENTE WHERE idade(data_nascimento)<20));

/* ALINEA E */
SELECT nome AS nome_medico FROM Clinica.MEDICO
WHERE idade(data_nascimento)>30 OR idade(data_inicio_servico)<5;

/* ALINEA F */
SELECT nome AS nome_paciente, idade(data_nascimento) AS idade_paciente FROM Clinica.PACIENTE pac
WHERE NOT EXISTS (SELECT * FROM Clinica.MEDICO med
WHERE NOT EXISTS (SELECT * FROM Clinica.CONSULTA con 
WHERE con.id_medico=med.id_medico AND con.id_paciente=pac.id_paciente));
/* OU */
SELECT nome AS nome_paciente, idade(data_nascimento) AS idade_paciente FROM Clinica.PACIENTE pac
WHERE ((SELECT COUNT(DISTINCT id_medico) FROM Clinica.CONSULTA con 
WHERE con.id_paciente=pac.id_paciente) = (SELECT COUNT(*) FROM Clinica.MEDICO));

/* ALINEA G */
SELECT nome AS nome_medico FROM Clinica.MEDICO
WHERE id_medico NOT IN (SELECT med.id_medico FROM Clinica.MEDICO med, Clinica.CONSULTA con, Clinica.PACIENTE pac, 
Clinica.CODIGO_POSTAL cp WHERE localidade='BRAGA' AND med.id_medico=con.id_medico AND con.id_paciente=pac.id_paciente
AND pac.codigo_postal=cp.codigo_postal);
/* OU */
SELECT nome AS nome_medico FROM Clinica.MEDICO med
WHERE (SELECT COUNT(*) FROM Clinica.CONSULTA con, Clinica.PACIENTE pac, Clinica.CODIGO_POSTAL cp 
WHERE localidade='BRAGA' AND med.id_medico=con.id_medico AND con.id_paciente=pac.id_paciente
AND pac.codigo_postal=cp.codigo_postal)=0;

/* ALINEA H */
/* RETORNA OS VALORES NULL (RESOLUCAO CORRETA) */
SELECT esp.designacao AS nome_especialidade, (SELECT AVG(idade(med.data_inicio_servico)) FROM Clinica.MEDICO med
WHERE med.especialidade=esp.id_especialidade) AS media_anos_servico_medicos
FROM Clinica.ESPECIALIDADE esp
ORDER BY esp.designacao;
/* NAO RETORNA OS VALORES NULL (RESOLUCAO INCORRETA) */
SELECT esp.designacao AS nome_especialidade, AVG(idade(med.data_inicio_servico)) AS media_anos_servico_medicos FROM Clinica.MEDICO med, Clinica.ESPECIALIDADE esp
WHERE med.especialidade=esp.id_especialidade
GROUP BY esp.designacao;

/* ALINEA I */
SELECT med.nome AS nome_medico, (SELECT COUNT(*) FROM Clinica.CONSULTA con 
WHERE med.id_medico=con.id_medico) AS numero_consultas_medico
FROM Clinica.MEDICO med
ORDER BY med.nome;

/* ALINEA J */
SELECT med.nome AS nome_medico, (SELECT SUM(con.preco) FROM Clinica.CONSULTA con WHERE date_format(con.data_hora,'%Y')=2017
AND med.id_medico=con.id_medico) AS total_valor_faturado_2017
FROM Clinica.MEDICO med
ORDER BY med.nome;

/* ALINEA K */
SELECT esp.designacao AS nome_especialidade, (SELECT COUNT(*) FROM Clinica.MEDICO med 
WHERE esp.id_especialidade=med.especialidade) AS numero_medicos_especialidade
FROM Clinica.ESPECIALIDADE esp
ORDER BY esp.designacao;

/** QUESTAO 5 **/

/* ADICIONAR COLUNA TOTAL_FATURADO NA TABELA MEDICO */
ALTER TABLE Clinica.MEDICO ADD total_faturado DECIMAL (10, 2);
/* CARREGAR VALORES DA COLUNA TOTAL_FATURADO COM DADOS DA BD */
UPDATE Clinica.MEDICO med SET med.total_faturado = (SELECT SUM(con.preco) FROM Clinica.CONSULTA con
WHERE med.id_medico=con.id_medico);
/* MANTER VALORES DA COLUNA TOTAL_FATURADO SEMPRE ATUALIZADOS */
DELIMITER //
CREATE PROCEDURE `Atualizar_Total_Faturado_Medico` (IN id_med INT(6), IN preco_consulta DECIMAL(8,2))
BEGIN
UPDATE Clinica.MEDICO med SET total_faturado = total_faturado + preco_consulta WHERE med.id_medico=id_med;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER `CONSULTA_AFTER_INSERT1` AFTER INSERT ON Clinica.CONSULTA FOR EACH ROW
BEGIN
CALL Atualizar_Total_Faturado_Medico(new.id_medico, new.preco);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER `CONSULTA_AFTER_UPDATE1` AFTER UPDATE ON Clinica.CONSULTA FOR EACH ROW
BEGIN
CALL Atualizar_Total_Faturado_Medico(old.id_medico, old.preco*(-1));
CALL Atualizar_Total_Faturado_Medico(new.id_medico, new.preco);
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER `CONSULTA_AFTER_DELETE1` AFTER DELETE ON Clinica.CONSULTA FOR EACH ROW
BEGIN
CALL Atualizar_Total_Faturado_Medico(old.id_medico, old.preco*(-1));
END //
DELIMITER ;