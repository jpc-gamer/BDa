drop database f1;
create database f1;
use f1;

-- Carros
create table carros(
  idCarro int auto_increment,
  marca varchar(50),
  modelo varchar(50),
  peso_carro int,
  potencia_carro varchar(50),
  motor varchar(50),
  material_chassi varchar(50),
  suspensao enum("ar", "independente", "hidropneumatico"),
  tipo_roda varchar(50),
  primary key (idCarro)
) default charset = utf8mb4;

insert into carros(marca, modelo, peso_carro, potencia_carro, motor, material_chassi, suspensao, tipo_roda)
values
("Red Bull Racing", "RB20", 798, "1000 cv", "Honda RBPT", "fibra de carbono", "independente", "OZ Racing"),
("Mercedes-AMG Petronas", "MGP-W15", 798, "1.000 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "OZ Racing"),
("Ferrari", "SF24", 780, "1.010 cv", "Ferrari 066/12 V6 Turbo", "Fibra de carbono", "independente", "Pirelli"),
("Mclaren", "MCL38", 750, "1.008 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "Enkei"),
("Alpine", "A524", 770, "995 cv", "Renault E-Tech 24 V6 Turbo", "Fibra de carbono", "independente", "OZ Racing"),
("Aston Martin", "AMR24", 785, "1.005 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "BBS"),
("Stake F1 Team Kick Sauber", "C44", 798, "1.000 cv", "Ferrari 066/12 V6 Turbo", "Fibra de carbono", "independente", "Enkei"),
("Visa Cash App RB Formula One Team", "VCARB 01", 770, "990 cv", "Honda RBPT", "Fibra de carbono", "independente", "OZ Racing"),
("Williams", "FW46", 775, "985 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "BBS"),
("MoneyGram Haas F1 Team", "C44", 798, "990 cv", "Ferrari 066/12 V6 Turbo", "Fibra de carbono", "independente", "OZ Racing");

-- Pilotos
create table piloto(
  idPiloto int auto_increment,
  nome varchar(50),
  equipe varchar(50),
  nacionalidade varchar(50),
  pontos int,
  companheiro varchar(50),
  qtdTitulos int,
  nasc date,
  patrocinador varchar(50),
  idCarro int,
  primary key (idPiloto),
  foreign key (idCarro) references carros(idCarro)
) default charset = utf8mb4;

insert into piloto (nome, equipe, nacionalidade, pontos, companheiro, qtdTitulos, nasc, patrocinador, idCarro) values
("Charles Leclerc", "Ferrari", "Mônaco", 138, "Carlos Sainz", 0, "1997-10-16", "HP", 3),
("Max Verstappen", "RedBull Racing", "Holanda", 169, "Sergio Perez", 3, "1997-09-30", "Oracle", 1),
("Carlos Sainz", "Ferrari", "Espanha", 108, "Charles Leclerc", 0, "1994-09-01", "HP", 3),
("Sergio Perez", "RedBull Racing", "México", 107, "Max Verstappen", 0, "1990-01-26", "Oracle", 1),
("Lando Norris", "McLaren", "Inglaterra", 113, "Oscar Piastri", 0, "1999-11-13", "eBay", 4),
("Oscar Piastri", "McLaren", "Austrália", 71, "Lando Norris", 0, "2001-04-06", "eBay", 4),
("Lewis Hamilton", "Mercedes", "Inglaterra", 42, "George Russel", 7, "1985-01-07", "Adidas", 2),
("George Russel", "Mercedes", "Inglaterra", 54, "Lewis Hamilton", 0, "1998-02-15", "Adidas", 2),
("Fernando Alonso", "Aston Martin", "Espanha", 33, "Lance Stroll", 4, "1981-07-29", "Aramco", 6),
("Lance Stroll", "Aston Martin", "Canadá", 9, "Fernando Alonso", 0, "1998-10-29", "Aramco", 6),
("Yuki Tsunoda", "Visa CashApp", "Japão", 19, "Daniel Ricciardo", 0, "2000-05-11", "Hugo Boss", 8),
("Daniel Ricciardo", "Visa CashApp", "Austrália", 5, "Yuki Tsunoda", 0, "1989-07-01", "Hugo Boss", 8),
("Kevin Magnussen", "HAAS", "Dinamarca", 1, "Nico Hulkenberg", 0, "1992-10-05", "Oakberry", 10),
("Nico Hulkenberg", "HAAS", "Finlândia", 6, "Kevin Magnussen", 0, "1987-08-19", "Oakberry", 10),
("Pierre Gasly", "Alpine", "França", 1, "Esteban Ocon", 0, "1996-02-07", "BRB", 5),
("Esteban Ocon", "Alpine", "França", 1, "Pierre Gasly", 0, "1996-09-17", "BRB", 5),
("Logan Sargeant", "Williams", "Estados Unidos", 0, "Alexander Albon", 0, "2000-12-31", "Komatsu", 9),
("Alexander Albon", "Williams", "Tailândia", 2, "Logan Sargeant", 0, "1996-03-23", "Komatsu", 9),
("Guanyu Zhou", "Stake", "China", 0, "Valtteri Bottas", 0, "1999-05-30", "Stake", 7),
("Valtteri Bottas", "Stake", "Alemanha", 0, "Guanyu Zhou", 0, "1989-08-28", "Stake", 7);

-- Pistas
-- Atualizado em 21_08
create table pista (
    idPista int(2) not null auto_increment primary key,
    nomePista varchar(50),
    pais varchar(50),
    VencedorPista_2024 varchar(50),
    melhorTempo varchar(50),
    tamanho int(15),
    numeroVoltas int(10)
) default charset = utf8mb4;

insert into pista (nomePista, pais, VencedorPista_2024, melhorTempo, tamanho, numeroVoltas) values
("Bahrain International Circuit", "Bahrein", "Max Verstappen", "1:31:44.742", 5412, 15),
("Jeddah Corniche Circuit", "Arábia Saudita", "Max Verstappen", "1:20:43.273", 6175, 27),
("Albert Park Grand Prix", "Austrália", "Carlos Sainz", "1:20:26.843", 5279, 14),
("Suzuka International Racing Course", "Japão", "Max Verstappen", "1:54:23.566", 5807, 14),
("Shanghai International Circuit", "China", "Max Verstappen", "1:40:52.554", 5451, 16),
("Miami International Autodrome", "Estados Unidos", "Lando Norris", "1:30:49.876", 5412, 19),
("Autodromo Internazionale Enzo e Dino Ferrari", "Itália", "Max Verstappen", "1:25:25.252", 4909, 19),
("Circuit de Monaco", "Mônaco", "Charles Leclerc", "2:23:15.554", 3337, 19),
("Circuit Gilles-Villeneuve", "Canadá", "Max Verstappen", "1:45:47.927", 4361, 14),
("Circuit de Barcelona-Catalunya", "Espanha", "Max Verstappen", "1:28:20.227", 4655, 16),
("Red Bull Ring", "Áustria", "George Russel", "1:24:22.798", 4318, 10),
("Silverstone Circuit", "Reino Unido", "Lewis Hamilton", "1:22:27.059", 5891, 17),
("Hungaroring", "Hungria", "Oscar Piastri", "1:38:01.989", 4381, 14),
("Circuit Spa-Francorchamps", "Bélgica", "Lewis Hamilton", "1:19:57.566", 7004, 19),
("Circuit Zandvoort", "Holanda", "-", "-", 4259, 15),
("Autodromo Nazionale Monza", "Itália", "-", "-", 5793, 11),
("Baku City Circuit", "Azerbaijão", "-", "-", 6003, 20),
("Marina Bay Street Circuit", "Singapura", "-", "-", 5073, 23),
("Circuit of the Americas", "Estados Unidos", "-", "-", 5513, 20),
("Autodromo Hermanos Rodriguez", "México", "-", "-", 4304, 17),
("Autódromo José Carlos Pace", "Brasil", "-", "-", 4309, 15),
("Streets of Las Vegas", "Estados Unidos", "-", "-", 6201, 17),
("Losail International Circuit", "Catar", "-", "-", 5380, 16),
("Yas Marina Circuit", "Emirados Árabes Unidos", "-", "-", 5281, 16); 

select marca from carros
where material_chassi = 'Fibra de carbono';

select marca, potencia_carro from carros where  potencia_carro < '1000 cv'; 

select marca, potencia_carro from carros where  potencia_carro > '1000 cv';  

select distinct marca from carros where suspensao = 'ar';

select distinct marca from carros where suspensao = 'independente';

select distinct marca from carros where suspensao = 'hidropneumatico';

select COUNT(*) as total_carros from carros;

SELECT COUNT(*) as total_ingleses from piloto where nacionalidade = 'Inglaterra';

SELECT COUNT(*) as total_brasileiros from piloto where nacionalidade = 'Brasil';

SELECT COUNT(*) as total_mexicanos from piloto where nacionalidade = 'México';

SELECT COUNT(*) as total_japoneses from piloto where nacionalidade = 'Japão';

SELECT COUNT(*) as total_americanos from piloto where nacionalidade = 'Estados Unidos';

select COUNT(*) as total_ingleses_mercedes from piloto where nacionalidade = 'Inglaterra' and equipe = 'Mercedes';

select distinct nacionalidade, nome, equipe from piloto where equipe = 'Ferrari';

select nome, equipe, companheiro from piloto where nome = 'Lando Norris';

select nome, pontos from piloto where pontos > 90;

select nome, pontos from piloto order by pontos DESC; 

select nome, pontos from piloto order by pontos ASC;

select nome, equipe from piloto where equipe = 'Williams';

select nome, equipe from piloto where equipe = 'Ferrari';

select nome, equipe from piloto where equipe = 'McLaren';





