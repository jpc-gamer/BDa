DROP DATABASE TARTURGA;
CREATE DATABASE TARTARUGA;

USE TARTARUGA;

CREATE TABLE Tartarugas (
 id_tartaruga INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 elemento VARCHAR(100) NOT NULL
);

CREATE TABLE Armas (
 id_arma INT AUTO_INCREMENT PRIMARY KEY,
 tipo_arma VARCHAR(100) NOT NULL,
 id_tartaruga INT,
 FOREIGN KEY (id_tartaruga) REFERENCES Tartarugas(id_tartaruga)
);

CREATE TABLE Viloes (
 id_vilão INT AUTO_INCREMENT PRIMARY KEY,
 nome_vilão VARCHAR(100) NOT NULL,
 id_tartaruga INT,
 FOREIGN KEY (id_tartaruga) REFERENCES Tartarugas(id_tartaruga)
);

INSERT INTO Tartarugas (nome, elemento) VALUES
('Leonardo', 'Água'),
('Michelangelo', 'Fogo'),
('Donatello', 'Terra'),
('Raphael', 'Ar'),
('Splinter', 'Mestre');

INSERT INTO Armas (tipo_arma, id_tartaruga) VALUES
('Katanas', 1),   -- Leonardo
('Nunchakus', 2), -- Michelangelo
('Bō', 3),        -- Donatello
('Sai', 4),       -- Raphael
('Bastão', 5);    -- Splinter

INSERT INTO Viloes (nome_vilão, id_tartaruga) VALUES
('Shredder', 1),   -- Associado a Leonardo
('Krang', 2),      -- Associado a Michelangelo
('Bebop', 3),      -- Associado a Donatello
('Rocksteady', 4), -- Associado a Raphael
('Foot Soldier', NULL); -- Não associado a nenhuma tartaruga

SELECT 
    T.nome AS nome_tartaruga,
    T.elemento,
    A.tipo_arma,
    V.nome_vilão
FROM 
    Tartarugas T
INNER JOIN 
    Armas A ON T.id_tartaruga = A.id_tartaruga
INNER JOIN 
    Viloes V ON T.id_tartaruga = V.id_tartaruga;


