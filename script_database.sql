id_ong INT AUTO_INCREMENT PRIMARY KEY,
    nome_instituicao VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL
);

CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL
);

CREATE TABLE pets (
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    id_ong INT,
    nome VARCHAR(50) NOT NULL,
    porte ENUM('Pequeno', 'Médio', 'Grande'),
    status_adocao ENUM('Disponível', 'Adotado'),
    FOREIGN KEY (id_ong) REFERENCES ongs(id_ong)
);

CREATE TABLE doacoes (
    id_doacao INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_ong INT,
    valor DECIMAL(10,2),
    chave_pix VARCHAR(255),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

CREATE TABLE favoritos (
    id_usuario INT,
    id_pet INT,
    PRIMARY KEY (id_usuario, id_pet)
);
