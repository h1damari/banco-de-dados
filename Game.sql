CREATE DATABASE Game;
USE Game;

CREATE TABLE Jogador(
    id_jogador INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    dn DATE NOT NULL,
    pais VARCHAR(50) NOT NULL,
    nivel INT
);

CREATE TABLE Jogo(
    id_jogo INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    plataforma VARCHAR(100),
    anoLancacamento INT
);

CREATE TABLE Partida(
    id_jogador INT NOT NULL,
    id_jogo INT NOT NULL,
    pontuacao INT NOT NULL,
    data_partida DATE NOT NULL,
    duracao INT NOT NULL,

        PRIMARY KEY(id_jogador, id_jogo),
        FOREIGN KEY(id_jogador) REFERENCES Jogador(id_jogador) ON DELETE CASCADE ON UPDATE CASCADE,
        FOREIGN KEY (id_jogo) REFERENCES Jogo(id_jogo) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Jogador (id_jogador, nome, dn, pais, nivel) VALUES
(1, 'Neymar Jr.', '1992-02-05', 'Brasil', 95),
(2, 'Vinicius Junior', '2000-07-12', 'Brasil', 93),
(3, 'Lionel Messi', '1987-06-24', 'Argentina', 98),
(4, 'Cristiano Ronaldo', '1985-02-05', 'Portugal', 97),
(5, 'Kylian Mbappe', '1998-12-20', 'França', 96),
(6, 'Erling Haaland', '2000-07-21', 'Noruega', 95);

INSERT INTO Jogo (id_jogo, nome, genero, plataforma, anoLancacamento) VALUES
(1, 'Brasil x Argentina', 'Futebol', 'Estádio do Maracanã', 2021),
(2, 'Real Madrid x Manchester City', 'Futebol', 'Santiago Bernabéu', 2024),
(3, 'Barcelona x Real Madrid', 'Futebol', 'Camp Nou', 2023),
(4, 'Portugal x França', 'Futebol', 'Estádio da Luz', 2021),
(5, 'Manchester City x Real Madrid', 'Futebol', 'Etihad Stadium', 2025),
(6, 'Brasil x França', 'Futebol', 'Estádio do Maracanã', 2022);

INSERT INTO Partida
(id_jogador, id_jogo, pontuacao, data_partida, duracao) VALUES
(1, 1, 9, '2021-07-10', 90),
(2, 2, 8, '2024-04-17', 90),
(3, 3, 10, '2023-10-28', 90),
(4, 4, 9, '2021-06-23', 90),
(5, 5, 9, '2025-04-09', 90),
(6, 6, 8, '2022-12-10', 90);

SELECT * FROM Jogador;
SELECT * FROM Jogo;
SELECT * FROM Partida;

SELECT nome, nivel FROM Jogador;
SELECT id_jogo, nome, genero FROM Jogo WHERE genero = 'infantil';