use dbescola;
 
 DELIMITER $$
 CREATE PROCEDURE selecionar_aluno_especifico( IN snome varchar(255))
 BEGIN
 SELECT * FROM alunos WHERE nome = snome;
 END $$
 DELIMITER ;
 CALL selecionar_aluno_especifico("Grazyele");
 
 
 DELIMITER $$
 CREATE PROCEDURE inserir_instrutores(IN snome varchar(255),semail varchar(255),svalor_hora double,scertificados varchar(255))
 BEGIN
 INSERT INTO instrutores(nome, email, valor_hora, certificados) values(snome,semail,svalor_hora,scertificados);
 END $$
 DELIMITER ;
  CALL inserir_instrutores("pedro", "pedro@gmail.com",20,"pós-graduação");
  
  
  DELIMITER $$
CREATE PROCEDURE Verificar_Quantidade_Cursos(OUT quantidade INT)
BEGIN
    SELECT COUNT(*) INTO quantidade FROM cursos;  
END $$
DELIMITER ;

CALL Verificar_Quantidade_Cursos(@total);
SELECT @total;
  
  
  DELIMITER $$
 CREATE PROCEDURE update_matriculas(IN sid int,sdata_matricula int)
 BEGIN
 UPDATE matriculas set sdata_matricula = data_matricula where sid = id;
 END $$
 DELIMITER ;
  CALL update_matriculas(12, 19992305);
  select * from matriculas;
  
  
   DELIMITER $$
 CREATE PROCEDURE delete_turmas(in sid int, scursos_id int)
 BEGIN
 delete from turmas where  scursos_id = cursos_id;
 END $$
 DELIMITER ;
  CALL delete_turmas(1, 2305);
  select * from turmas;
  

  
 