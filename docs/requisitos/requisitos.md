# Requisitos y criterios de aceptación

Fuente: enunciado «Construcción de una tienda virtual» (Politécnico Grancolombiano). Responsable: Gerente de desarrollo `[DESARROLLO]`.

## Usuarios del producto

| Tipo de usuario | Descripción | Qué necesita hacer | Requisitos |
|---|---|---|---|
| Visitante | Persona que llega al catálogo desde un enlace o buscador; lo usa de forma ocasional para explorar precios y disponibilidad antes de decidir si se registra. | Ver el catálogo, buscar artículos por nombre o con filtros y ampliar el detalle de un producto. | R03, R04, R05, R06 |
| Cliente registrado | Comprador que ya tiene cuenta; regresa cuando necesita un producto y considera decisivos el precio, el stock y el total del pedido. | Registrarse, iniciar y cerrar sesión, comprar por artículo indicando cantidad, gestionar el carrito y confirmar su pedido. | R01, R02, R07, R08, R09 |
| Administrador del catálogo (equipo) | Integrante del equipo que mantiene los datos del catálogo; interviene al cargar o corregir artículos. | Cargar y actualizar los artículos, sus características, imágenes y stock mediante el script de datos. | R05 (carga por script; el panel web queda excluido) |

## Requisitos

| ID | Requisito | Origen | Criterio de aceptación |
|---|---|---|---|
| R01 | Registro de clientes (nombre, correo, contraseña). | Enunciado | Al diligenciar nombre, correo válido y contraseña de mínimo 8 caracteres, la cuenta se crea y se muestra confirmación. Si el correo ya existe o falta un campo, no se crea la cuenta y se indica el error. La contraseña se almacena cifrada (hash). |
| R02 | Inicio y cierre de sesión. | Enunciado | Con credenciales correctas el cliente entra y ve su nombre en el encabezado; con credenciales incorrectas se muestra «Correo o contraseña incorrectos» sin indicar cuál falló. Al cerrar sesión, el carrito y las páginas de pedido dejan de ser accesibles. |
| R03 | Búsqueda básica por nombre. | Enunciado | Al escribir parte del nombre (sin distinguir mayúsculas/minúsculas ni tildes) se listan los artículos coincidentes. Si no hay coincidencias se muestra «No se encontraron artículos» y no se produce error. |
| R04 | Búsqueda avanzada por características. | Enunciado | El cliente combina filtros de categoría, marca, rango de precio y «solo con stock»; el resultado contiene únicamente artículos que cumplen todos los filtros. Un rango de precio inválido (mínimo > máximo) se rechaza con mensaje. |
| R05 | Catálogo con al menos 20 artículos. | Enunciado | La página del catálogo muestra 20 o más artículos, cada uno con imagen, nombre, precio y cantidad en stock; un artículo sin stock aparece marcado como «Agotado». |
| R06 | Detalle ampliado al hacer clic en la imagen. | Enunciado | Al hacer clic en la imagen de un artículo se abre su vista ampliada con imagen grande, descripción completa, características técnicas, precio y stock; se puede volver al catálogo sin perder la búsqueda. |
| R07 | Compra por artículo (artículo y cantidad). | Enunciado | Un cliente con sesión elige cantidad entre 1 y el stock disponible y agrega el artículo al pedido. Una cantidad de 0, negativa o mayor al stock se rechaza con mensaje. Sin sesión, el sistema redirige al inicio de sesión. |
| R08 | Carrito de compras con total a pagar. | Enunciado | El carrito muestra cada artículo con cantidad, precio unitario y subtotal, más la cantidad total de artículos y el total a pagar. Al cambiar una cantidad o eliminar un artículo, los valores se recalculan de inmediato. |
| R09 | Confirmación y registro del pedido. | Equipo | Al confirmar, el pedido queda guardado con número, fecha, cliente y detalle; el stock de cada artículo se descuenta y el carrito queda vacío. Si otro pedido agotó el stock, la confirmación se bloquea e informa el artículo afectado. |

## Fuera del alcance

- Pasarela de pagos real o cobro en línea (el pedido se registra sin pago).
- Envíos, logística y cálculo de fletes.
- Panel web de administración de artículos, usuarios y pedidos.
- Recuperación de contraseña por correo electrónico y verificación de cuenta.
- Facturación electrónica, impuestos diferenciados y cupones de descuento.
- Reseñas, calificaciones y recomendaciones de productos.
- Aplicación móvil nativa y despliegue en un dominio de producción (se ejecuta en entorno local o de pruebas).
