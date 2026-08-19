USE clinica;

SHOW TABLES;

SELECT * FROM medico;
SELECT * FROM consulta;
SELECT * FROM paciente;

SELECT cpf, nomeMed FROM medico;
SELECT nomeMed, especialidade FROM medico;
SELECT nomeMed AS NOME, dataNasc FROM medico;
SELECT codMed, nomeMed FROM medico WHERE especialidade = 'Ortopedia';
SELECT codMed AS CODIGU, nomeMed AS NOME FROM medico;
SELECT COUNT(*) FROM consulta WHERE CodPac = '4';
SELECT nomeMed FROM medico WHERE cpf IS NOT NULL;
SELECT nomeMed FROM medico WHERE cpf IS NULL;
SELECT nomeMed FROM medico WHERE nomeMed LIKE 'M%';
SELECT nomeMed FROM medico WHERE nomeMed LIKE 'M%' OR especialidade = 'Neurologia';
SELECT nomePac FROM paciente WHERE nomePac LIKE 'A%';
SELECT nomeMed FROM medico WHERE nomeMed LIKE '%N%';
SELECT nomePac FROM paciente WHERE nomePac LIKE '%N%';

INSERT INTO paciente VALUES ('7', 'Lucas Eduardo', '1999-08-06' ,'01169874521', 'Bahia');
INSERT INTO paciente VALUES ('8', 'João Eduardo', '1976-05-03' ,'69877456325', 'Acre');

SELECT nomePac FROM paciente WHERE nomePac LIKE '%Lucas%';