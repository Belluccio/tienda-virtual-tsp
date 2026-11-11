-- =====================================================================
-- TecnoPoli Store — Datos iniciales del catálogo (20 artículos)
-- Tarea T11 · Requisito R05 · Rol: [DESARROLLO]
-- Ejecutar después de schema.sql. Precios en pesos colombianos (COP).
-- Las imágenes se ubican en public/img/articulos/ (se agregan en T15).
-- =====================================================================

SET NAMES utf8mb4;  -- evita que las tildes se dañen al importar

USE tienda_virtual_tsp;

INSERT INTO categorias (id, nombre) VALUES
  (1, 'Portátiles'), (2, 'Celulares'), (3, 'Tablets'), (4, 'Audio'), (5, 'Accesorios');

INSERT INTO marcas (id, nombre) VALUES
  (1, 'Lenovo'), (2, 'HP'), (3, 'Asus'), (4, 'Samsung'), (5, 'Xiaomi'),
  (6, 'Motorola'), (7, 'JBL'), (8, 'Sony'), (9, 'Logitech'), (10, 'Kingston');

INSERT INTO articulos (id, nombre, descripcion, caracteristicas, precio, stock, imagen, categoria_id, marca_id) VALUES
-- Portátiles
(1,  'Portátil Lenovo IdeaPad Slim 3 15"', 'Portátil liviano para estudio y oficina, con buen rendimiento para programación y multitarea.',
     'Procesador: Intel Core i5 de 12.ª gen.\nMemoria RAM: 16 GB\nAlmacenamiento: SSD 512 GB\nPantalla: 15,6" Full HD\nSistema: Windows 11', 2899000.00, 8, 'img/articulos/01.jpg', 1, 1),
(2,  'Portátil HP 15 Ryzen 5', 'Equipo de uso diario con procesador AMD y teclado numérico completo.',
     'Procesador: AMD Ryzen 5 7520U\nMemoria RAM: 8 GB\nAlmacenamiento: SSD 512 GB\nPantalla: 15,6" Full HD\nSistema: Windows 11', 2299000.00, 12, 'img/articulos/02.jpg', 1, 2),
(3,  'Portátil Asus Vivobook 14', 'Portátil compacto de 14 pulgadas, ideal para llevar a clase.',
     'Procesador: Intel Core i3 de 13.ª gen.\nMemoria RAM: 8 GB\nAlmacenamiento: SSD 256 GB\nPantalla: 14" Full HD\nPeso: 1,4 kg', 1899000.00, 5, 'img/articulos/03.jpg', 1, 3),
(4,  'Portátil Gamer Asus TUF F15', 'Portátil para juegos y diseño con tarjeta gráfica dedicada.',
     'Procesador: Intel Core i7 de 12.ª gen.\nMemoria RAM: 16 GB\nAlmacenamiento: SSD 1 TB\nGráficos: NVIDIA RTX 4050 6 GB\nPantalla: 15,6" 144 Hz', 5499000.00, 3, 'img/articulos/04.jpg', 1, 3),
-- Celulares
(5,  'Celular Samsung Galaxy A35 5G', 'Smartphone de gama media con pantalla AMOLED y resistencia al agua.',
     'Pantalla: 6,6" Super AMOLED 120 Hz\nAlmacenamiento: 256 GB\nMemoria RAM: 8 GB\nCámara principal: 50 MP\nBatería: 5000 mAh', 1599000.00, 15, 'img/articulos/05.jpg', 2, 4),
(6,  'Celular Xiaomi Redmi Note 13', 'Celular con excelente relación calidad-precio y carga rápida.',
     'Pantalla: 6,67" AMOLED 120 Hz\nAlmacenamiento: 256 GB\nMemoria RAM: 8 GB\nCámara principal: 108 MP\nCarga rápida: 33 W', 999000.00, 20, 'img/articulos/06.jpg', 2, 5),
(7,  'Celular Motorola Moto G54 5G', 'Celular 5G con batería de larga duración y Android limpio.',
     'Pantalla: 6,5" 120 Hz\nAlmacenamiento: 256 GB\nMemoria RAM: 8 GB\nCámara principal: 50 MP\nBatería: 5000 mAh', 849000.00, 0, 'img/articulos/07.jpg', 2, 6),
(8,  'Celular Samsung Galaxy S24', 'Celular de gama alta con funciones de inteligencia artificial y cámara avanzada.',
     'Pantalla: 6,2" Dynamic AMOLED 2X\nAlmacenamiento: 256 GB\nMemoria RAM: 8 GB\nCámara principal: 50 MP con zoom 3x\nProcesador: Exynos 2400', 3999000.00, 4, 'img/articulos/08.jpg', 2, 4),
-- Tablets
(9,  'Tablet Samsung Galaxy Tab A9+', 'Tablet de 11 pulgadas para estudio, lectura y entretenimiento.',
     'Pantalla: 11" 90 Hz\nAlmacenamiento: 128 GB\nMemoria RAM: 8 GB\nBatería: 7040 mAh\nConectividad: Wi-Fi', 1199000.00, 7, 'img/articulos/09.jpg', 3, 4),
(10, 'Tablet Xiaomi Redmi Pad SE', 'Tablet económica con pantalla grande y cuatro parlantes.',
     'Pantalla: 11" 90 Hz\nAlmacenamiento: 128 GB\nMemoria RAM: 4 GB\nBatería: 8000 mAh\nAudio: 4 parlantes Dolby Atmos', 849000.00, 9, 'img/articulos/10.jpg', 3, 5),
(11, 'Tablet Lenovo Tab M11 con lápiz', 'Tablet con lápiz incluido para tomar apuntes a mano.',
     'Pantalla: 11" 90 Hz\nAlmacenamiento: 128 GB\nMemoria RAM: 4 GB\nIncluye: Lenovo Tab Pen\nBatería: 7040 mAh', 1099000.00, 6, 'img/articulos/11.jpg', 3, 1),
-- Audio
(12, 'Audífonos JBL Tune 520BT', 'Audífonos inalámbricos de diadema con sonido JBL Pure Bass.',
     'Tipo: Diadema, inalámbricos\nConexión: Bluetooth 5.3\nAutonomía: 57 horas\nMicrófono: Sí\nPlegables: Sí', 229000.00, 25, 'img/articulos/12.jpg', 4, 7),
(13, 'Audífonos Sony WH-1000XM5', 'Audífonos con cancelación de ruido líder para viajes y concentración.',
     'Tipo: Diadema, inalámbricos\nCancelación de ruido: Activa\nAutonomía: 30 horas\nConexión: Bluetooth 5.2\nCarga rápida: 3 min = 3 h', 1599000.00, 3, 'img/articulos/13.jpg', 4, 8),
(14, 'Audífonos Xiaomi Redmi Buds 5', 'Audífonos de botón con estuche de carga y cancelación de ruido.',
     'Tipo: In-ear, inalámbricos\nCancelación de ruido: Activa\nAutonomía: 40 horas con estuche\nConexión: Bluetooth 5.3\nResistencia: IP54', 179000.00, 30, 'img/articulos/14.jpg', 4, 5),
(15, 'Parlante JBL Flip 6', 'Parlante portátil resistente al agua para exteriores.',
     'Potencia: 30 W\nResistencia: IP67 (agua y polvo)\nAutonomía: 12 horas\nConexión: Bluetooth 5.1\nPeso: 550 g', 549000.00, 10, 'img/articulos/15.jpg', 4, 7),
-- Accesorios
(16, 'Mouse inalámbrico Logitech M170', 'Mouse compacto con receptor USB, ideal para portátil.',
     'Conexión: Receptor USB 2,4 GHz\nAutonomía: 12 meses\nCompatibilidad: Windows, macOS, Linux\nBotones: 3', 49000.00, 40, 'img/articulos/16.jpg', 5, 9),
(17, 'Teclado Logitech K380 Bluetooth', 'Teclado multidispositivo que se conecta hasta a tres equipos.',
     'Conexión: Bluetooth\nDispositivos: hasta 3\nDistribución: Español\nAutonomía: 24 meses\nPilas: 2 AAA', 189000.00, 14, 'img/articulos/17.jpg', 5, 9),
(18, 'Memoria USB Kingston DataTraveler 128 GB', 'Memoria USB 3.2 para respaldar y transportar archivos.',
     'Capacidad: 128 GB\nInterfaz: USB 3.2 Gen 1\nVelocidad de lectura: hasta 100 MB/s\nDiseño: Capuchón giratorio', 45000.00, 50, 'img/articulos/18.jpg', 5, 10),
(19, 'Disco SSD Kingston NV3 1 TB', 'Unidad de estado sólido NVMe para actualizar portátiles y PC.',
     'Capacidad: 1 TB\nInterfaz: PCIe 4.0 NVMe M.2 2280\nLectura: hasta 6000 MB/s\nEscritura: hasta 4000 MB/s', 329000.00, 2, 'img/articulos/19.jpg', 5, 10),
(20, 'Cámara web Logitech C920', 'Cámara web Full HD para clases virtuales y videollamadas.',
     'Resolución: 1080p a 30 fps\nMicrófono: Estéreo\nEnfoque: Automático\nConexión: USB', 299000.00, 0, 'img/articulos/20.jpg', 5, 9);
