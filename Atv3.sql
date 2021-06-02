--  01 
DELIMITER $$

CREATE FUNCTION Inserir_Aluno(codCurso INT, dataNasc DATE, tot_cred INT, mgp DOUBLE(10,2),
                                nome VARCHAR(60), email VARCHAR(50)) RETURNS VARCHAR(60)

DETERMINISTIC

BEGIN
    INSERT INTO aluno (cod_curso, dat_nasc, tot_cred, mgp, nom_alun, email) VALUES (codCurso, dataNasc, tot_cred, mgp, nome, email);

    RETURN nome;

END

$$
DELIMITER ;



--  02
DELIMITER $$

CREATE PROCEDURE SP_While()

BEGIN

    DECLARE Contador int default 1;
    DECLARE Saida VARCHAR(20) DEFAULT "";

    WHILE Contador <= 5 DO
    
        SET Saida = CONCAT(Saida, Contador, ", ");
        SET Contador = Contador +  1;
        
    END WHILE; 
   
   SELECT Saida;
   
END
$$
DELIMITER ;

CALL SP_While();




--  03
DELIMITER $$

CREATE PROCEDURE sp_Repeat()

BEGIN

    DECLARE contador INT DEFAULT 1;
    DECLARE Resultado VARCHAR(50) DEFAULT "";

    REPEAT
        SET Resultado = CONCAT(Resultado, contador, ",");
        SET contador = contador + 1;
        until contador > 9
    END REPEAT;

    SELECT Resultado;

END

$$
DELIMITER ;

CALL sp_repeat();
