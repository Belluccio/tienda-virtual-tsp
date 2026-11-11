# Roles TSPi del equipo

Equipo unipersonal: **Danilo Belluccio (DB)** es titular de los cinco roles. No hay suplentes; si la tutora asigna nuevos integrantes, los roles se redistribuyen y el cambio se registra en el historial de versiones del plan.

| Rol | Responsabilidades en este proyecto | Evidencia en el repositorio |
|---|---|---|
| **Líder de equipo** | Conduce la reunión semanal (domingos 7:00 p. m.), abre cada acta, vela por los compromisos, aprueba cambios al plan y representa al equipo ante la tutora (martes). | `docs/actas/`, historial de versiones del plan, commits `[LIDER]` |
| **Gerente de desarrollo** | Requisitos y criterios de aceptación, diseño de BD y pantallas, implementación de R01–R09 y casos de prueba. | `docs/requisitos/`, `docs/diseno/`, `database/`, `app/`, `public/`, commits `[DESARROLLO]` |
| **Gerente de planeación** | Consolida cada domingo las horas y tareas, actualiza issues y milestones, calcula el valor ganado y reporta el estado del plan. | `docs/plan/`, `docs/tspi/`, milestones, commits `[PLANEACION]` |
| **Gerente de calidad y proceso** | Define checklists, inspecciona diseño y código en sesión distinta a la de construcción, registra defectos y aprueba los PR. | `docs/proceso/checklist-revision.md`, `docs/tspi/LOGD`, PR aprobados, commits `[CALIDAD]` |
| **Gerente de soporte** | Repositorio, ramas, entorno XAMPP, scripts de BD, versiones (`v0.x`, `v1.0`) y gestión de cambios. | Estructura del repo, `README.md`, tags y releases, commits `[SOPORTE]` |

## Relación con los roles de la Lectura Fundamental 3

| Rol TSPi (Workbook) | Roles de la lectura que agrupa |
|---|---|
| Gerente de desarrollo | Administrador de la interfaz del cliente, gerente de diseño, gerente de implementación, gerente de pruebas |
| Gerente de calidad y proceso | Gerente de calidad, gerente de proceso |
| Líder, planeación y soporte | Se corresponden uno a uno |
