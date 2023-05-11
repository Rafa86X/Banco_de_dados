/* Lógico: */

CREATE TABLE Vendedor (
    Cod_vendedor smallint PRIMARY KEY,
    CPF varchar(11),
    Nome varchar(50)
);

CREATE TABLE Venda (
    Cod_venda smallint PRIMARY KEY,
    Parcelas smallint,
    Quantidade smallint,
    Vendedor_cod_vendedor smallint,
    Cliente_CPF varchar(11),
    Forma_pgto_Id_pgto smallint
);

CREATE TABLE Cliente (
    CPF varchar(11) PRIMARY KEY,
    Nome varchar(50),
    Sobrenome varchar(50),
    Data_Nascimento date,
    Idade smallint,
    Telefone varchar(15),
    CEP varchar(9),
    Cidade varchar(50),
    Rua varchar(50),
    Numero smallint
);

CREATE TABLE forma_pgto (
    Id_pgto smallint PRIMARY KEY,
    Descricao varchar(50)
);

CREATE TABLE Produto (
    Cod_Produto smallint PRIMARY KEY,
    Nome varchar(50),
    Preco float,
    Id_Categoria smallint
);

CREATE TABLE Categoria (
    Id_Categoria smallint PRIMARY KEY,
    Descricao varchar(50)
);

CREATE TABLE Venda_Produto (
    Venda_cod_venda smallint,
    Cod_Produto smallint,
    Quantidade smallint,
    PRIMARY KEY (Venda_cod_venda, Cod_Produto)
);
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_2
    FOREIGN KEY (Vendedor_cod_vendedor)
    REFERENCES Vendedor (Cod_vendedor)
    ON DELETE RESTRICT;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_3
    FOREIGN KEY (Cliente_CPF)
    REFERENCES Cliente (CPF)
    ON DELETE RESTRICT;
 
ALTER TABLE Venda ADD CONSTRAINT FK_Venda_4
    FOREIGN KEY (Forma_pgto_Id_pgto)
    REFERENCES forma_pgto (Id_pgto)
    ON DELETE RESTRICT;
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_2
    FOREIGN KEY (Id_Categoria)
    REFERENCES Categoria (Id_Categoria)
    ON DELETE RESTRICT;
 
ALTER TABLE Venda_Produto ADD CONSTRAINT FK_Venda_Produto_1
    FOREIGN KEY (Venda_cod_venda)
    REFERENCES Venda (Cod_venda)
    ON DELETE RESTRICT;
 
ALTER TABLE Venda_Produto ADD CONSTRAINT FK_Venda_Produto_2
    FOREIGN KEY (Cod_Produto)
    REFERENCES Produto (Cod_Produto)
    ON DELETE RESTRICT;