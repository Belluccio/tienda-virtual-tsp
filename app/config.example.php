<?php
/**
 * Configuración de conexión — copiar como app/config.php y ajustar.
 * app/config.php está en .gitignore para no publicar credenciales.
 * Rol: [SOPORTE] · Tarea T02
 */
return [
    'db' => [
        'host'    => '127.0.0.1',
        'puerto'  => 3306,
        'nombre'  => 'tienda_virtual_tsp',
        'usuario' => 'root',      // usuario por defecto de XAMPP
        'clave'   => '',          // XAMPP trae la clave vacía
        'charset' => 'utf8mb4',
    ],
    'app' => [
        'nombre'   => 'TecnoPoli Store',
        'url_base' => 'http://localhost/tienda-virtual-tsp/public/',
    ],
];
