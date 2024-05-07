-- Tabela de Hóspedes
CREATE TABLE Hospede (
    Codigo INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela de Quartos
CREATE TABLE Quarto (
    id INT PRIMARY KEY,
    tipo VARCHAR(50),
    capacidade INT,
    preco DECIMAL(10, 2)
);

-- Tabela de Reservas
CREATE TABLE Reserva (
    id INT PRIMARY KEY,
    id_hospede INT,
    id_quarto INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_hospede) REFERENCES Hospede(id),
    FOREIGN KEY (id_quarto) REFERENCES Quarto(id)
);

-- Tabela de Serviços
CREATE TABLE Servico (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

-- Tabela de Reservas_Servicos (relacionamento muitos-para-muitos entre Reservas e Serviços)
CREATE TABLE Reserva_Servico (
    id_reserva INT,
    id_servico INT,
    PRIMARY KEY (id_reserva, id_servico),
    FOREIGN KEY (id_reserva) REFERENCES Reserva(id),
    FOREIGN KEY (id_servico) REFERENCES Servico(id)
);

-- Tabela de Funcionários
CREATE TABLE Funcionario (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    data_admissao DATE
);

-- Tabela de Comentários
CREATE TABLE Comentario (
    id INT PRIMARY KEY,
    id_hospede INT,
    comentario TEXT,
    data_comentario DATE,
    FOREIGN KEY (id_hospede) REFERENCES Hospede(id)
);
