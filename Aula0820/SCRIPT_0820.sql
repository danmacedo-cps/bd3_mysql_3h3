select * from departamento where nome like "%a%";
select count(cod_depto) as departamentos from departamento;

select 
	emp.nome as Empregado,
    depto.nome as Departamento
from
	empregado emp,
    departamento depto
where
	depto.cod_depto=emp.cod_depto;
    
select
	emp.nome as Empregado,
    emp.dt_nascimento as Datanascimento,
    emp.dt_admissao as DataAdmissão
from
empregado emp;

SELECT
    nome AS Empregado,
    FORMAT((DATEDIFF(NOW(), dt_nascimento) / 365), 0) AS idade,
    FORMAT((DATEDIFF(NOW(), dt_admissao) / 365), 0) AS tempo_empresa,
    DATE_FORMAT(DATE_SUB(dt_admissao, INTERVAL 1 MONTH), CONCAT(YEAR(CURDATE()), "/%m/%d")) AS ferias
FROM
    empregado;