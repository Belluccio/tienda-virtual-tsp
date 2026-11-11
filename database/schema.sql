-- =====================================================================
-- TecnoPoli Store — Esquema de base de datos (MySQL 8)
-- Tarea T08 · Requisitos R01, R05, R09 · Rol: [DESARROLLO]
-- El carrito (R08) se maneja en la sesión PHP; al confirmar se guarda
-- como pedido + detalle (R09).
-- =====================================================================

CREATE DATABASE IF NOT EXISTS tienda_virtual_tsp
  CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE tienda_virtual_tsp;

-- R01, R02: clientes registrados
CREATE TABLE usuarios (
  id            INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre        VARCHAR(100)  NOT NULL,
  correo        VARCHAR(150)  NOT NULL,
  password_hash VARCHAR(255)  NOT NULL,
  creado_en     DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT uq_usuarios_correo UNIQUE (correo)
) ENGINE=InnoDB;

-- R04: filtros de búsqueda avanzada
CREATE TABLE categorias (
  id     SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(60) NOT NULL,
  CONSTRAINT uq_categorias_nombre UNIQUE (nombre)
) ENGINE=InnoDB;

CREATE TABLE marcas (
  id     SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(60) NOT NULL,
  CONSTRAINT uq_marcas_nombre UNIQUE (nombre)
) ENGINE=InnoDB;

-- R03, R04, R05, R06: artículos con características, stock e imagen
CREATE TABLE articulos (
  id              INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre          VARCHAR(120)      NOT NULL,
  descripcion     TEXT              NOT NULL,
  caracteristicas TEXT              NOT NULL,   -- lista "clave: valor" separada por saltos de línea
  precio          DECIMAL(12,2)     NOT NULL,
  stock           INT UNSIGNED      NOT NULL DEFAULT 0,
  imagen          VARCHAR(200)      NOT NULL,   -- ruta relativa en public/img/articulos/
  categoria_id    SMALLINT UNSIGNED NOT NULL,
  marca_id        SMALLINT UNSIGNED NOT NULL,
  CONSTRAINT ck_articulos_precio CHECK (precio > 0),
  CONSTRAINT fk_articulos_categoria FOREIGN KEY (categoria_id) REFERENCES categorias(id),
  CONSTRAINT fk_articulos_marca     FOREIGN KEY (marca_id)     REFERENCES marcas(id),
  INDEX ix_articulos_nombre (nombre),
  INDEX ix_articulos_precio (precio)
) ENGINE=InnoDB;

-- R09: pedido confirmado
CREATE TABLE pedidos (
  id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  usuario_id INT UNSIGNED  NOT NULL,
  fecha      DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP,
  total      DECIMAL(12,2) NOT NULL,
  estado     ENUM('confirmado','cancelado') NOT NULL DEFAULT 'confirmado',
  CONSTRAINT fk_pedidos_usuario FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
) ENGINE=InnoDB;

-- R07, R09: artículos y cantidades de cada pedido
CREATE TABLE pedido_detalle (
  id              INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  pedido_id       INT UNSIGNED  NOT NULL,
  articulo_id     INT UNSIGNED  NOT NULL,
  cantidad        INT UNSIGNED  NOT NULL,
  precio_unitario DECIMAL(12,2) NOT NULL,
  subtotal        DECIMAL(12,2) NOT NULL,
  CONSTRAINT ck_detalle_cantidad CHECK (cantidad >= 1),
  CONSTRAINT fk_detalle_pedido   FOREIGN KEY (pedido_id)   REFERENCES pedidos(id) ON DELETE CASCADE,
  CONSTRAINT fk_detalle_articulo FOREIGN KEY (articulo_id) REFERENCES articulos(id)
) ENGINE=InnoDB;
