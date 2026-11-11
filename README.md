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
| La inspección del diseño y sus defectos | [`docs/diseno/inspeccion-diseno-T10.md`](docs/diseno/inspeccion-diseno-T10.md) y [`docs/tspi/LOGD.csv`](docs/tspi/LOGD.csv) |
| Las tareas T01–T32 y su estado | Pestaña **Issues** (una por tarea, agrupadas por *milestone* S1–S8) |
| Los registros de tiempo y defectos | [`docs/tspi/`](docs/tspi/) |
| El seguimiento semanal (valor planeado vs. ganado) | [`docs/seguimiento/`](docs/seguimiento/) |
| La verificación de calidad antes de entregar | [`docs/proceso/verificacion-entrega1.md`](docs/proceso/verificacion-entrega1.md) |

## Equipo y roles

**Danilo Belluccio ejerce los cinco roles del TSPi de forma completa.** Este proyecto está planteado como una práctica *full stack* de todo el ciclo de un producto de software: liderar, planear, construir, asegurar la calidad, dar soporte y entregar. Cada rol hace su trabajo completo, con las mismas responsabilidades, sesiones y evidencias que tendría si lo desempeñara una persona distinta:

1. Cada rol trabaja en **sesiones propias** (por ejemplo, el rol de calidad revisa en una sesión distinta a la que usó el rol de desarrollo para construir).
2. Cada commit lleva **el prefijo del rol** que lo produce, para que el aporte de cada uno se pueda revisar por separado:

| Prefijo | Rol TSPi | Qué se ve en sus commits |
|---|---|---|
| `[LIDER]` | Líder de equipo | Actas, aprobación de cambios al plan, cierre |
| `[DESARROLLO]` | Gerente de desarrollo | Requisitos, diseño, código, casos de prueba |
| `[PLANEACION]` | Gerente de planeación | Plan, tareas, calendario, seguimiento semanal |
| `[CALIDAD]` | Gerente de calidad y proceso | Checklists, inspecciones, registro de defectos, aprobación de PR |
| `[SOPORTE]` | Gerente de soporte | Repositorio, entorno, versiones y releases |

Para ver solo el trabajo de un rol: `git log --oneline --grep="\[CALIDAD\]"`

### Commits por rol (corte Entrega 1)

| Rol | Commits | % |
|---|---|---|
| `[LIDER]` | 6 | 22 % |
| `[DESARROLLO]` | 6 | 22 % |
| `[PLANEACION]` | 5 | 18 % |
| `[CALIDAD]` | 5 | 18 % |
| `[SOPORTE]` | 5 | 18 % |
| **Total** | **27** | 100 % |

Para actualizar esta tabla: `bash scripts/commits-por-rol.sh`

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
| S3 | 09/11 – 15/11 | **Entrega 1** · diseño inspeccionado y 20 artículos cargados | ✅ |
| S4 | 16/11 – 22/11 | Registro, sesión y catálogo | ⏳ |
| S5 | 23/11 – 29/11 | **Entrega 2** · búsquedas y pruebas R01–R06 | ⏳ |
| S6 | 30/11 – 06/12 | Compra, carrito y pedido | ⏳ |
| S7 | 07/12 – 13/12 | **Entrega 3** · release v1.0 y conclusiones | ⏳ |
| S8 | 14/12 – 20/12 | Sustentación y video | ⏳ |

## Instalación (local)

La base de datos ya se puede instalar; la aplicación web se integra desde la semana 4.

1. Clonar el repositorio dentro de `htdocs` de XAMPP.
2. Crear la base de datos con `database/schema.sql` y cargar los 20 artículos con `database/seed.sql` (en phpMyAdmin: pestaña **Importar**, o por consola: `mysql -u root < database/schema.sql`).
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
