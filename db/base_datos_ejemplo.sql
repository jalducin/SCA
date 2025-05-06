
-- Tabla de Activos
CREATE TABLE IF NOT EXISTS inventario_activo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT,
    codigo TEXT UNIQUE,
    fecha_ingreso DATE DEFAULT CURRENT_DATE
);

-- Tabla de Lotes
CREATE TABLE IF NOT EXISTS inventario_lote (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    descripcion TEXT
);

-- Datos de ejemplo para Activos
INSERT INTO inventario_activo (nombre, descripcion, codigo) VALUES
('Laptop HP', 'Laptop modelo HP Probook 450 G7', 'HP-001'),
('Monitor Samsung', 'Monitor 24 pulgadas LED', 'SAMSUNG-002');

-- Datos de ejemplo para Lotes
INSERT INTO inventario_lote (nombre, descripcion) VALUES
('Lote Oficina 2023', 'Equipamiento nuevo oficina central'),
('Lote TI', 'Lote de equipo para soporte técnico');
