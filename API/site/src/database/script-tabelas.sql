CREATE DATABASE projetoindividual;
USE projetoindividual;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50) unique,
	senha VARCHAR(50)
);



