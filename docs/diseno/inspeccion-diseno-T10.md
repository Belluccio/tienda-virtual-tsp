# Inspección del diseño — T10

| Campo | Registro |
|---|---|
| Fecha | 10/11/2026 |
| Rol que inspecciona | DB – Gerente de calidad y proceso `[CALIDAD]` |
| Productos inspeccionados | `docs/diseno/modelo-er.md`, `database/schema.sql`, `docs/diseno/wireframes.md` |
| Producido por | DB – Gerente de desarrollo (T08, T09) |
| Lista aplicada | [Checklist de revisión de diseño](../proceso/checklist-revision.md#checklist-de-revisión-de-diseño) |

## Resultado de la lista de verificación

| # | Punto | Resultado | Observación |
|---|---|---|---|
| 1 | Cada requisito R01–R09 tiene al menos una tabla o pantalla | ✅ Cumple | Tabla de trazabilidad en `modelo-er.md`; R08 se cubre con la sesión PHP. |
| 2 | Llaves primarias y foráneas | ✅ Cumple | Las 6 tablas tienen PK; 5 relaciones con FK. |
| 3 | `NOT NULL` en obligatorios y correo único | ✅ Cumple | `uq_usuarios_correo`. |
| 4 | Precios `DECIMAL`, cantidades y stock enteros no negativos | ⚠️ Parcial | **D03:** `pedidos.total` y `pedido_detalle.subtotal` no tienen restricción de valor no negativo. |
| 5 | Pantallas cubren los casos de error de los criterios de aceptación | ❌ No cumple | **D01:** el detalle no indica qué pasa con un artículo agotado (R07). **D02:** el carrito no muestra el estado vacío ni el bloqueo por stock agotado al confirmar (R08, R09). |
| 6 | Navegación de regreso al catálogo | ✅ Cumple | «← Volver al catálogo» en detalle y «Seguir comprando» en carrito. |

## Defectos encontrados

| ID | Producto | Descripción | Fase de inyección | Corrección |
|---|---|---|---|---|
| D01 | wireframes.md (detalle) | No se define el comportamiento con stock 0: el botón «Agregar al pedido» debe deshabilitarse y mostrarse «Agotado». | Diseño | Corregido por `[DESARROLLO]` |
| D02 | wireframes.md (carrito) | Falta el estado «carrito vacío» y el mensaje de bloqueo cuando un artículo se agotó antes de confirmar (criterio de R09). | Diseño | Corregido por `[DESARROLLO]` |
| D03 | schema.sql | `pedidos.total` y `pedido_detalle.subtotal` aceptan valores negativos. | Diseño | Corregido por `[DESARROLLO]` |

Defectos registrados en [`docs/tspi/LOGD.csv`](../tspi/LOGD.csv).

## Decisión

El diseño se **aprueba con correcciones**. Cuando se corrijan D01–D03, se puede iniciar T11 (carga de los 20 artículos).

**Verificación de correcciones:** D01, D02 y D03 corregidos en el commit `[DESARROLLO] fix(diseno)` y verificados contra la lista. Diseño aprobado.
