-- ══════════════════════════════════════════
-- BodegaTech — Script de Inventario
-- Autor: Virginia Analia Cusmai
-- Fecha: 2026-10-05
-- ══════════════════════════════════════════

-- ── SECCIÓN DDL ──────────────────────────

-- Paso 1: DROP TABLE para permitir reejecutar el script limpiamente
DROP TABLE IF EXISTS inventario;

-- Paso 2: CREATE TABLE definiendo la estructura y tipos de datos
CREATE TABLE inventario (
    -- id_producto: Clave primaria numérica entera para identificar unívocamente cada producto
    id_producto INT PRIMARY KEY,
    -- nombre_producto: Cadena de texto de hasta 100 caracteres para el nombre comercial
    nombre_producto VARCHAR(100),
    -- categoria: Clasificación comercial del producto
    categoria VARCHAR(50),
    -- precio_unitario: DECIMAL(10, 2) para valores monetarios exactos, evitando errores de coma flotante
    precio_unitario DECIMAL(10, 2),
    -- stock_actual: Cantidad entera de unidades disponibles en almacén
    stock_actual INT,
    -- stock_minimo: Cantidad umbral para reordenar mercadería
    stock_minimo INT,
    -- fecha_ingreso: Almacena exclusivamente año, mes y día de entrada al depósito
    fecha_ingreso DATE,
    -- activo: Valor entero reducido (1 = disponible, 0 = descontinuado)
    activo INT
);


-- ── SECCIÓN DML ──────────────────────────

-- Paso 3: INSERT INTO para cargar los 10 registros iniciales
INSERT INTO inventario (id_producto, nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES 
    (1, 'Laptop Pro 15', 'Computación', 1200.00, 15, 3, '2024-01-10', 1),
    (2, 'Mouse Inalámbrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1),
    (3, 'Monitor 4K 27"', 'Computación', 450.00, 12, 2, '2024-01-15', 1),
    (4, 'Teclado Mecánico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1),
    (5, 'Laptop Basic 14', 'Computación', 650.00, 20, 3, '2024-02-01', 1),
    (6, 'Auriculares BT Pro', 'Audio', 120.00, 35, 5, '2024-02-01', 1),
    (7, 'Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1),
    (8, 'Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1),
    (9, 'SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1),
    (10, 'Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

-- Paso 4: UPDATE con WHERE para registrar ventas del día
-- Venta de Laptop Pro 15: 15 iniciales - 3 vendidas = 12
UPDATE inventario 
SET stock_actual = stock_actual - 3 
WHERE id_producto = 1;

-- Venta de Mouse Inalámbrico: 80 iniciales - 12 vendidas = 68
UPDATE inventario 
SET stock_actual = stock_actual - 12 
WHERE id_producto = 2;

-- Venta de Auriculares BT Pro: 35 iniciales - 5 vendidas = 30
UPDATE inventario 
SET stock_actual = stock_actual - 5 
WHERE id_producto = 6;

-- Paso 5: UPDATE para marcar producto descontinuado
UPDATE inventario 
SET activo = 0 
WHERE id_producto = 8;

-- Paso 6: SELECT de validación para verificar el estado final de los datos
SELECT * FROM inventario;
