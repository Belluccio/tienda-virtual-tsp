# Wireframes de la interfaz

Tarea **T09** · Rol `[DESARROLLO]` · Requisitos R03–R08

## 1. Catálogo con búsqueda (R03, R04, R05)

```
┌──────────────────────────────────────────────────────────────────┐
│ TecnoPoli Store        [ Buscar por nombre…      ][🔍]  Ingresar │
│                                               🛒 Carrito (0)     │
├───────────────┬──────────────────────────────────────────────────┤
│ BÚSQUEDA      │  ┌────────┐  ┌────────┐  ┌────────┐  ┌────────┐  │
│ AVANZADA      │  │ [img]  │  │ [img]  │  │ [img]  │  │ [img]  │  │
│ Categoría [▾] │  │ Nombre │  │ Nombre │  │ Nombre │  │ Nombre │  │
│ Marca     [▾] │  │ $ 0000 │  │ $ 0000 │  │ $ 0000 │  │AGOTADO │  │
│ Precio mín [ ]│  │Stock 12│  │Stock 3 │  │Stock 7 │  │Stock 0 │  │
│ Precio máx [ ]│  └────────┘  └────────┘  └────────┘  └────────┘  │
│ ☐ Solo stock  │        … (20 o más artículos, en cuadrícula)     │
│ [Filtrar]     │  Sin resultados → «No se encontraron artículos»  │
└───────────────┴──────────────────────────────────────────────────┘
```

## 2. Detalle ampliado (R06, R07) — al hacer clic en la imagen

```
┌──────────────────────────────────────────────────────────────────┐
│ ← Volver al catálogo                                             │
│ ┌───────────────────┐  Nombre del artículo                       │
│ │                   │  Marca · Categoría                         │
│ │   [imagen grande] │  $ 0.000.000                               │
│ │                   │  Disponibles: 12                           │
│ └───────────────────┘  Cantidad [ 1 ][−][+]   [Agregar al pedido]│
│ Descripción completa…                                            │
│ Características: Pantalla: … · Memoria: … · Batería: …           │
│ Error: «La cantidad debe estar entre 1 y 12» / sin sesión → login│
└──────────────────────────────────────────────────────────────────┘
```

## 3. Registro e inicio de sesión (R01, R02)

```
┌───────────── Crear cuenta ─────────────┐ ┌──────── Ingresar ────────┐
│ Nombre      [                        ] │ │ Correo     [            ]│
│ Correo      [                        ] │ │ Contraseña [            ]│
│ Contraseña  [            ] (mín. 8)    │ │ [Ingresar]               │
│ [Registrarme]                          │ │ «Correo o contraseña     │
│ «Este correo ya está registrado»       │ │   incorrectos»           │
└────────────────────────────────────────┘ └──────────────────────────┘
```

## 4. Carrito y confirmación (R08, R09)

```
┌──────────────────────────────────────────────────────────────────┐
│ Mi carrito                                         Hola, Danilo ▾│
├──────────────┬──────────┬─────────────┬─────────────┬────────────┤
│ Artículo     │ Cantidad │ Precio u.   │ Subtotal    │            │
│ Portátil X   │ [ 1 ]    │ $ 2.500.000 │ $ 2.500.000 │ [Eliminar] │
│ Audífonos Y  │ [ 2 ]    │ $   150.000 │ $   300.000 │ [Eliminar] │
├──────────────┴──────────┴─────────────┴─────────────┴────────────┤
│ Artículos: 3                         TOTAL A PAGAR: $ 2.800.000  │
│ [Seguir comprando]                            [Confirmar pedido] │
│ Confirmado → «Pedido N.º 0001 registrado» y carrito vacío        │
└──────────────────────────────────────────────────────────────────┘
```
