SELECT nome_aluno, nome_responsavel, parent FROM PARENTESCO p
INNER JOIN Aluno a
ON p.id_aluno = a.id_aluno
INNER JOIN Responsavel r
ON p.id_responsavel = r.id_responsavel
GROUP BY a.id_aluno;
