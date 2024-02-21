CREATE DATABASE Disciplina
GO 
USE Disciplina
GO 
CREATE TABLE Aluno (
ra INT NOT NULL,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL
PRIMARY KEY(ra)
)
GO 
CREATE TABLE Disciplina (
codigo INT NOT NULL,
nome VARCHAR(80) NOT NULL, 
carga_horaria INT NOT NULL
PRIMARY KEY(codigo)
)
GO
CREATE TABLE Aluno_Disciplina (
ra INT NOT NULL,
codigo INT NOT NULL
FOREIGN KEY (ra) REFERENCES Aluno(ra),
FOREIGN KEY (codigo) REFERENCES Disciplina(codigo)
)
GO 
CREATE TABLE Curso (
cod INT NOT NULL,
nome VARCHAR(50) NOT NULL,
area INT NOT NULL
PRIMARY KEY (cod)
)
GO 
CREATE TABLE Curso_Disciplina (
cod INT NOT NULL,
codigo INT NOT NULL
FOREIGN KEY (codigo) REFERENCES Disciplina(codigo),
FOREIGN KEY (cod) REFERENCES Curso(cod)
)
GO 
CREATE TABLE Titulacao (
codigo INT NOT NULL, 
titulo VARCHAR(40) NOT NULL
PRIMARY KEY(codigo)
)
GO
CREATE TABLE Professor (
registro INT NOT NULL, 
nome VARCHAR(100) NOT NULL,
codigo INT NOT NULL
PRIMARY KEY(registro)
FOREIGN KEY (codigo) REFERENCES Titulacao(codigo)
)
GO 
CREATE TABLE Disciplina_Professor (
codigo INT NOT NULL,
registro INT NOT NULL
FOREIGN KEY(codigo) REFERENCES Disciplina(codigo),
FOREIGN KEY(registro) REFERENCES Professor(registro)
)



