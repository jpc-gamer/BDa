drop database veterinario;

CREATE DATABASE veterinario;
use veterinario;

CREATE TABLE Veterinarios (
    id_veterinario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raca VARCHAR(50),
    idade INT,
    id_veterinario INT,
    FOREIGN KEY (id_veterinario) REFERENCES Veterinarios(id_veterinario)
);

CREATE TABLE Consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_veterinario INT,
    data_consulta DATE,
    descricao TEXT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinarios(id_veterinario)
);

INSERT INTO Veterinarios (nome, especialidade, telefone, email, endereco) VALUES
('Dr. Ana Souza', 'Cardiologia', '11 99999-1111', 'ana.souza@vetclinic.com', 'Rua das Flores, 123, São Paulo, SP'),
('Dr. João Lima', 'Dermatologia', '21 98888-2222', 'joao.lima@vetclinic.com', 'Av. das Américas, 456, Rio de Janeiro, RJ'),
('Dra. Maria Costa', 'Oftalmologia', '31 97777-3333', 'maria.costa@vetclinic.com', 'Rua das Palmeiras, 789, Belo Horizonte, MG');


INSERT INTO Pacientes (nome, especie, raca, idade, id_veterinario) VALUES
('Rex', 'Cachorro', 'Labrador', 5, 2),
('Mia', 'Gato', 'Siamês', 3, 1),
('Thor', 'Cachorro', 'Pastor Alemão', 4, 3);


INSERT INTO Consultas (id_paciente, id_veterinario, data_consulta, descricao) VALUES
(1, 1, '2024-08-15', 'Consulta de rotina, sem alterações significativas.'),
(2, 2, '2024-08-16', 'Exame dermatológico devido a coceira intensa. Tratamento iniciado.'),
(3, 3, '2024-08-17', 'Avaliação ortopédica, recomenda-se fisioterapia.');


Select * from Veterinarios;
Select * from Pacientes;
Select * from Consultas;

select nome, especialidade from veterinarios;

select Pacientes.id_paciente, Pacientes.nome, Pacientes.especie, Pacientes.raca,
Pacientes.id_veterinario, Veterinarios.nome from Pacientes, Veterinarios 
where Pacientes.id_veterinario = Veterinarios.id_veterinario;


select * from consultas where descricao like '%rotina%'; 

select * from pacientes order by nome; 

