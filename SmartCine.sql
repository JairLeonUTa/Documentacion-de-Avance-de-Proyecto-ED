-- 1. Tabla Categoria
CREATE TABLE Categoria (
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_padre INT REFERENCES Categoria(id_categoria)
);

-- 2. Tabla Usuario
CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    rol VARCHAR(20) CHECK (rol IN ('Cliente', 'Empleado', 'Admin'))
);

-- 3. Tabla Cliente
CREATE TABLE Cliente (
    id_usuario INT PRIMARY KEY REFERENCES Usuario(id_usuario) ON DELETE CASCADE,
    telefono VARCHAR(15),
    fecha_registro DATE DEFAULT CURRENT_DATE,
    metodo_pago VARCHAR(50)
);

-- 4. Tabla Pelicula
CREATE TABLE Pelicula (
    cod_pelicula VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    id_categoria INT REFERENCES Categoria(id_categoria),
    costo_alquiler DECIMAL(10,2),
    stock INT DEFAULT 0
);

-- 5. Tabla Transaccion
CREATE TABLE Transaccion (
    id_transaccion SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES Cliente(id_usuario),
    cod_pelicula VARCHAR(20) REFERENCES Pelicula(cod_pelicula),
    tipo VARCHAR(20) CHECK (tipo IN ('Alquiler', 'Compra')),
    fecha_emision TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    monto_total DECIMAL(10,2),
    estado VARCHAR(20)
);

-- 6. Tabla Preferencia_Cliente
CREATE TABLE Preferencia_Cliente (
    id_cliente INT REFERENCES Cliente(id_usuario),
    id_categoria INT REFERENCES Categoria(id_categoria),
    PRIMARY KEY (id_cliente, id_categoria)
);

-- 7. Tabla Multa
CREATE TABLE Multa (
    id_multa SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES Cliente(id_usuario),
    monto DECIMAL(10,2),
    estado VARCHAR(20) DEFAULT 'Pendiente'
);

-- 8. Tabla Bitacora
CREATE TABLE Bitacora (
    id_log SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES Usuario(id_usuario),
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    evento VARCHAR(255)
);