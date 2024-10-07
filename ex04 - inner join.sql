Drop database OLIMPIADAS;
CREATE DATABASE OLIMPIADAS;

USE OLIMPIADAS;

CREATE TABLE Atletas (
 id_atleta INT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(100) NOT NULL,
 pais VARCHAR(100) NOT NULL,
 data_nascimento DATE NOT NULL
);

CREATE TABLE Eventos (
 id_evento INT AUTO_INCREMENT PRIMARY KEY,
 nome_evento VARCHAR(100) NOT NULL,
 data_evento DATE NOT NULL,
 id_atleta INT,
 FOREIGN KEY (id_atleta) REFERENCES Atletas(id_atleta)
);

INSERT INTO Atletas (nome, pais, data_nascimento) VALUES
('Usain Bolt', 'Jamaica', '1986-08-21'),
('Michael Phelps', 'Estados Unidos', '1985-06-30'),
('Simone Biles', 'Estados Unidos', '1997-03-14'),
('Neymar Jr.', 'Brasil', '1992-02-05'),
('Serena Williams', 'Estados Unidos', '1981-09-26');

INSERT INTO Eventos (nome_evento, data_evento, id_atleta) VALUES
('100m Rasante', '2024-07-25', 1),  -- Usain Bolt
('200m Nado Livre', '2024-07-27', 2),  -- Michael Phelps
('Ginástica Artística', '2024-07-29', 3),  -- Simone Biles
('Futebol Masculino', '2024-07-30', 4),  -- Neymar Jr.
('Tênis Feminino', '2024-08-01', 5);  -- Serena Williams

Select  Atletas.nome, 
		Atletas.pais, 
        Atletas.data_nascimento,
        Eventos.nome_evento,
        Eventos.data_evento
	From Atletas 
    Inner join Eventos on Atletas.id_atleta = Eventos.id_atleta;

