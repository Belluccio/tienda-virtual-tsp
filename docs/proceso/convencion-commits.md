# Convención de commits

Todos los commits los realiza el propietario del repositorio (**Danilo Belluccio**), sin coautores. El rol que produce el cambio se identifica con un prefijo.

## Formato

```
[ROL] tipo(alcance): descripción breve — Txx
```

- **ROL:** `LIDER`, `DESARROLLO`, `PLANEACION`, `CALIDAD` o `SOPORTE`.
- **tipo:** `feat` (funcionalidad), `fix` (corrección de defecto), `docs` (documentación), `test` (pruebas), `chore` (configuración), `refactor`.
- **alcance:** requisito o área afectada (`R01`, `db`, `plan`, `acta`…).
- **Txx:** ID de la tarea del plan (sección 3.2) y, si existe, el issue (`#12`).

## Ejemplos

```
[SOPORTE] chore(repo): estructura inicial del repositorio — T02
[DESARROLLO] feat(R01): formulario y validación de registro de clientes — T13
[CALIDAD] docs(LOGD): defectos encontrados en la revisión de R01 — T16
[PLANEACION] docs(plan): seguimiento semana S4 — T32
[LIDER] docs(acta): acta N.º 4 de seguimiento
```

## Ramas

| Rama | Uso |
|---|---|
| `main` | Versión integrada y revisada. Solo recibe cambios por *pull request* aprobado por `[CALIDAD]`. |
| `feature/Rxx-descripcion` | Desarrollo de un requisito. |
| `fix/Dxx-descripcion` | Corrección de un defecto registrado en LOGD. |

## Ver el trabajo de cada rol

```bash
git log --oneline --grep="\[DESARROLLO\]"
git log --oneline --grep="\[CALIDAD\]"
```
