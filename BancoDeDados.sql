/*
    --- Codigos Do banco de dados que foram usados ---
*/

create TABLE Usuario (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOt NULL,
  nome TEXT NOT NULL,
  email TEXT NOT NULL,
  senha TEXT NOT NULL,
  nick TEXT NOT NULL
) STRICT;

CREATE TABLE Categoria (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOt NULL,
  nome TEXT NOT NULL
) STRICT;

CREATE TABLE Obra (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOt NULL,
  nome TEXT NOT NULL,
  sinopse TEXT NOT NULL,
  duracao INTEGER NOT NULL,
  classificacao INTEGER NOT NULL
) STRICT;

CREATE TABLE Categoria_Obra (
  idObra INTEGER NOT NULL,
  idCategoria INTEGER NOT NULL,
  PRIMARY KEY (idObra, idCategoria),
  FOREIGN KEY (idObra) REFERENCES Obra (id),
  FOREIGN KEY (idCategoria) REFERENCES Categoria (id)
) STRICT;

CREATE TABLE Pessoa (
  id INTEGER PRIMARY KEY AUTOINCREMENT NOt NULL,
  nome TEXT NOT NULL,
  biografia TEXT NOT NULL,
  nascimento INTEGER NOT NULL -- É tipo data
) STRICT;

CREATE TABLE Pessoa_Obra (
  idObra INTEGER NOT NULL,
  idPessoa INTEGER NOT NULL,
  PRIMARY KEY (idObra, idPessoa),
  FOREIGN KEY (idObra) REFERENCES Obra (id),
  FOREIGN KEY (idPessoa) REFERENCES Pessoa (id)
) STRICT;


