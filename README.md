# TecnoPoli Store — Catálogo virtual (Proyecto TSP)

Proyecto del módulo **Desarrollo de Software en Equipo – TSP**, Grupo **B05**, Politécnico Grancolombiano.
Docente: **Diana Angélica Cruz Ortega** · Integrante: **Danilo Belluccio (DB)**

Catálogo virtual web de artículos de tecnología con registro de clientes, búsqueda básica y avanzada, detalle de artículos, compra por artículo y carrito de compras, desarrollado siguiendo el proceso **TSPi** (Team Software Process introductorio).

---

## Guía rápida para la revisión

| Quiero ver… | Dónde está |
|---|---|
| El plan de lanzamiento (Entrega 1) | [`docs/plan/`](docs/plan/) — `.docx` y `.pdf` |
| Las actas de las reuniones | [`docs/actas/`](docs/actas/) |
| Los requisitos y criterios de aceptación | [`docs/requisitos/requisitos.md`](docs/requisitos/requisitos.md) |
| Los roles y quién hace qué | [`docs/proceso/roles.md`](docs/proceso/roles.md) |
| Cómo se identifica el trabajo de cada rol en los commits | [`docs/proceso/convencion-commits.md`](docs/proceso/convencion-commits.md) |
| Las reglas de revisión y calidad | [`docs/proceso/checklist-revision.md`](docs/proceso/checklist-revision.md) |
| El diseño (modelo de datos y pantallas) | [`docs/diseno/`](docs/diseno/) y [`database/`](database/) |
| Las tareas T01–T32 y su estado | Pestaña **Issues** (una por tarea, agrupadas por *milestone* S1–S8) |
| Los registros de tiempo y defectos | [`docs/tspi/`](docs/tspi/) |

## Equipo y roles

El subgrupo tiene **un solo integrante**, que asume los cinco roles del TSPi. Para mantener la separación de responsabilidades que propone TSP:

1. Cada rol trabaja en **sesiones distintas** (por ejemplo, el rol de calidad revisa al menos 12 horas después de que el rol de desarrollo construye).
2. Cada commit lleva **el prefijo del rol** que lo produce:

| Prefijo | Rol TSPi | Qué se ve en sus commits |
|---|---|---|
| `[LIDER]` | Líder de equipo | Actas, aprobación de cambios al plan, cierre |
| `[DESARROLLO]` | Gerente de desarrollo | Requisitos, diseño, código, casos de prueba |
| `[PLANEACION]` | Gerente de planeación | Plan, tareas, calendario, seguimiento semanal |
| `[CALIDAD]` | Gerente de calidad y proceso | Checklists, inspecciones, registro de defectos, aprobación de PR |
| `[SOPORTE]` | Gerente de soporte | Repositorio, entorno, versiones y releases |

Para ver solo el trabajo de un rol: `git log --oneline --grep="\[CALIDAD\]"`

## Tecnologías

- **Frontend:** HTML5, CSS3, JavaScript (sin frameworks) — carpeta `public/`
- **Backend:** PHP 8 con PDO — carpeta `app/`
- **Base de datos:** MySQL 8 — carpeta `database/`
- **Entorno local:** XAMPP

## Estado por semana

| Semana | Fechas | Hito | Estado |
|---|---|---|---|
| S1 | 26/10 – 01/11 | Lanzamiento: roles y repositorio | ✅ |
| S2 | 02/11 – 08/11 | Alcance y requisitos definidos | ✅ |
| S3 | 09/11 – 15/11 | **Entrega 1** · diseño inspeccionado y 20 artículos cargados | 🔄 En curso |
| S4 | 16/11 – 22/11 | Registro, sesión y catálogo | ⏳ |
| S5 | 23/11 – 29/11 | **Entrega 2** · búsquedas y pruebas R01–R06 | ⏳ |
| S6 | 30/11 – 06/12 | Compra, carrito y pedido | ⏳ |
| S7 | 07/12 – 13/12 | **Entrega 3** · release v1.0 y conclusiones | ⏳ |
| S8 | 14/12 – 20/12 | Sustentación y video | ⏳ |

## Instalación (local)

> Disponible desde la semana 4, cuando se integre el primer módulo.

1. Clonar el repositorio dentro de `htdocs` de XAMPP.
2. Crear la base de datos ejecutando `database/schema.sql` y luego `database/seed.sql`.
3. Copiar `app/config.example.php` a `app/config.php` y ajustar las credenciales.
4. Abrir `http://localhost/tienda-virtual-tsp/public/`.

## Estructura

```
├── app/          Lógica PHP (controladores, modelos, conexión)
├── database/     schema.sql y seed.sql
├── docs/
│   ├── actas/    Actas de reunión / lanzamiento
│   ├── diseno/   Modelo E-R y wireframes
│   ├── plan/     Plan de lanzamiento (entregas)
│   ├── proceso/  Roles, convención de commits, checklists
│   ├── requisitos/
│   └── tspi/     Registros de tiempo (LOGT), defectos (LOGD) y tareas
└── public/       Páginas, CSS, JS e imágenes
```
