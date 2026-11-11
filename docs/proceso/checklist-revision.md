# Listas de verificación de calidad

Responsable: **Gerente de calidad y proceso** (`[CALIDAD]`).

Regla del equipo: la revisión se hace **en una sesión distinta a la de construcción, mínimo 12 horas después**. Cada defecto encontrado se registra en `docs/tspi/LOGD.csv` con su fase de inyección y de remoción.

## Definición de terminado

Una tarea está terminada cuando:

- [ ] Cumple su criterio de aceptación (`docs/requisitos/requisitos.md`).
- [ ] Tiene aplicada la lista de verificación que le corresponde.
- [ ] Sus defectos están registrados y corregidos.
- [ ] Está integrada a `main` mediante un *pull request* aprobado.
- [ ] Su tiempo quedó registrado en `docs/tspi/LOGT.csv`.

## Checklist de revisión de diseño

- [ ] Cada requisito R01–R09 tiene al menos una tabla o pantalla que lo soporta.
- [ ] Las tablas tienen llave primaria y las relaciones tienen llave foránea.
- [ ] Los campos obligatorios están marcados `NOT NULL`; el correo del cliente es único.
- [ ] Precios en `DECIMAL`, cantidades y stock en enteros no negativos.
- [ ] Las pantallas cubren los casos de error del criterio de aceptación (mensajes de validación, sin resultados, sin stock).
- [ ] La navegación permite volver al catálogo desde detalle y carrito.

## Checklist de revisión de código

- [ ] Consultas con PDO y sentencias preparadas (sin concatenar entradas del usuario).
- [ ] Contraseñas con `password_hash()` / `password_verify()`.
- [ ] Salidas HTML escapadas con `htmlspecialchars()`.
- [ ] Validación en servidor de cantidades (1 ≤ cantidad ≤ stock) y de campos obligatorios.
- [ ] Páginas de compra, carrito y pedido protegidas por sesión.
- [ ] Nombres de variables y funciones en español claro y consistente.
- [ ] Sin código comentado ni `var_dump`/`print_r` olvidados.
- [ ] El commit sigue la convención `[ROL] tipo(alcance): descripción — Txx`.
