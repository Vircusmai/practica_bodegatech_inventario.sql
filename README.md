# Prácticas de Data Analytics - SQL

## Módulo 2 - Unidad 5: Administrando el inventario de BodegaTech (DDL y DML)

### Archivos
- `practica_bodegatech_inventario.sql`: Script SQL con las sentencias DDL y DML requeridas.

### Decisiones de Diseño y Criterios Técnicos
1. **DDL**:
   - `DROP TABLE IF EXISTS inventario`: Garantiza idempotencia y reejecución sin errores.
   - `id_producto INT PRIMARY KEY`: Garantiza unicidad e integridad de entidad.
   - `precio_unitario DECIMAL(10, 2)`: Almacenamiento financiero exacto.
   - `fecha_ingreso DATE`: Tipo temporal estándar (YYYY-MM-DD).
2. **DML**:
   - Inserción limpia de los 10 productos del catálogo.
   - Actualización de stock con cláusula `WHERE` para evitar modificaciones accidentales masivas:
     - ID 1 (Laptop Pro 15): Stock final = 12.
     - ID 2 (Mouse Inalámbrico): Stock final = 68.
     - ID 6 (Auriculares BT Pro): Stock final = 30.
   - Descontinuación de la Webcam HD (ID 8) mediante `activo = 0`.
   - Consulta `SELECT * FROM inventario` para validación de datos.

### Instrucciones de Ejecución
Ejecutar el script en cualquier gestor relacional (PostgreSQL, SQL Server o simuladores online
# Prácticas de Data Analytics - SQL

## Módulo 2 - Unidad 5: Administrando el inventario de BodegaTech (DDL y DML)

### Archivos
- `practica_bodegatech_inventario.sql`: Script SQL con las sentencias DDL y DML requeridas.

### Decisiones de Diseño y Criterios Técnicos
1. **DDL**:
   - `DROP TABLE IF EXISTS inventario`: Garantiza idempotencia y reejecución sin errores.
   - `id_producto INT PRIMARY KEY`: Garantiza unicidad e integridad de entidad.
   - `precio_unitario DECIMAL(10, 2)`: Almacenamiento financiero exacto.
   - `fecha_ingreso DATE`: Tipo temporal estándar (YYYY-MM-DD).
2. **DML**:
   - Inserción limpia de los 10 productos del catálogo.
   - Actualización de stock con cláusula `WHERE` para evitar modificaciones accidentales masivas:
     - ID 1 (Laptop Pro 15): Stock final = 12.
     - ID 2 (Mouse Inalámbrico): Stock final = 68.
     - ID 6 (Auriculares BT Pro): Stock final = 30.
   - Descontinuación de la Webcam HD (ID 8) mediante `activo = 0`.
   - Consulta `SELECT * FROM inventario` para validación de datos.

### Instrucciones de Ejecución
Ejecutar el script en cualquier gestor relacional (PostgreSQL, SQL Server o simuladores online).
