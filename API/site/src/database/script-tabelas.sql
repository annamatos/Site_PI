CREATE DATABASE projetoindividual;
USE projetoindividual;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    dtNasc date,
    genero varchar(20), constraint chkGenero check (genero in ('Feminino', 'Masculino', 'Não binário')),
    qntPet int,
	email VARCHAR(50) unique not null, constraint chkEmail CHECK (email like '%@%'),
	senha VARCHAR(50) not null
);

CREATE TABLE pet(
idPet int primary key auto_increment,
nome VARCHAR(50) not null,
dtNasc date,
tipo VARCHAR(50),
raça VARCHAR(50),
fkUsuario int,
constraint fkUsuario foreign key (fkUsuario) references usuario(idUsuario)
);

CREATE TABLE historias (
idHistoria int primary key auto_increment,
historia VARCHAR(10000) not null,
imagem1 VARCHAR(500),
imagem2 VARCHAR(500),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario)
);