create database biblioteca;
use biblioteca;
create table Autores (
    id_autor int primary key auto_increment,
    nome varchar (100) not null,
    nacionalidade varchar (50)
    );
create table livros (
    id_livros int primary key auto_increment,
    titulo varchar(100) not null,
    ano_publicacao int,
    genero varchar (50),
    id_autor int,
    foreign key (id_autor) references Autores (id_autor)
    );
    
insert into Autores (nome, nacionalidade) values
('Machado de Assis', 'brasileiro'),
('Edgar Alan Poe', 'Estadounidanse'),
('Stephen King',  'Estadounidense'),
('Jorge Amado', 'brasileiro'),
('Carlos Drummond de Andrade', 'brasileiro');

select * from Autores;
alter table Autores
add UNIQUE (nome);

insert into Livros
(titulo, ano_publicacao, genero, id_autor) values
('Memórias Póstumas de Braz Cubas', 1881, 'romance', 1),
('O corvo', 1845, 'terror', 2),
('Tieta do Agreste', 1977, 'romance', 4),
('Don Casamurro', 1899, 'romance', 3),
('O gato preto', 1834, 'terror', 5); 