Create table Aluno (
   	id_aluno NUMBER AUTO_INCREMENT,
    nome_aluno VARCHAR,	
	CONSTRAINT PKid_aluno Primary key(id_aluno)
);

Create table Responsavel (
	id_responsavel NUMBER AUTO_INCREMENT,
  	nome_responsavel VARCHAR,	
	CONSTRAINT PKid_resp Primary key(id_responsavel)
);

create table Parentesco (
	id_responsavel NUMBER,
  	id_aluno NUMBER,
  	parent VARCHAR,
	CONSTRAINT FKid_resp Foreign Key(id_responsavel) REFERENCES Parentesco(id_responsavel),
	CONSTRAINT FKid_al Foreign Key(id_aluno) REFERENCES Aluno(id_aluno)
);


insert into aluno(nome_aluno) values ('Lucas');

insert into responsavel(nome_responsavel) values ('Pablo');

insert into responsavel(nome_responsavel) values('Brenda');

INSERT INTO Parentesco (id_responsavel, id_aluno, parent) 
SELECT responsavel.id_responsavel, aluno.id_aluno, 'Pai' 
FROM Responsavel  
INNER JOIN Aluno ON aluno.nome_aluno = 'Lucas' 
WHERE responsavel.nome_responsavel = 'Pablo';

INSERT INTO Parentesco (id_responsavel, id_aluno, parent) 
SELECT responsavel.id_responsavel, aluno.id_aluno, 'Mae' 
FROM Responsavel  
INNER JOIN Aluno ON aluno.nome_aluno = 'Lucas' 
WHERE responsavel.nome_responsavel = 'Brenda';