CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autor(
	id_autor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE Livro(
	id_livro INT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    ano INT,
    editora VARCHAR(80)
);

CREATE TABLE Aluno(
	id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    curso VARCHAR(50)
);

ALTER TABLE Aluno ADD telefone INT;
ALTER TABLE Livro ADD isbn INT;
ALTER TABLE Livro MODIFY editora VARCHAR(120);
ALTER TABLE Livro CHANGE ano ano_publicacao INT;
ALTER TABLE Aluno DROP telefone;

ALTER TABLE Livro ADD id_autor INT;
ALTER TABLE Livro ADD FOREIGN KEY (id_autor) REFERENCES Autor (id_autor);
ALTER TABLE Livro MODIFY editora VARCHAR(80) NOT NULL;
ALTER TABLE Livro MODIFY ano_publicacao DATE;
ALTER TABLE Livro ADD email VARCHAR(100) UNIQUE;

DROP TABLE Aluno;
DROP TABLE Livro;
DROP DATABASE Biblioteca;
