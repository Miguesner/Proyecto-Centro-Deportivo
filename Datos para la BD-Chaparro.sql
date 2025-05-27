use centrodeportivo

-- DATOS PARA CENTRO DEPORTIVO

-- Clientes
INSERT INTO Clientes (nombre, apellido, fecha_nacimiento, telefono, correo, direccion, fecha_registro) VALUES
('Juan', 'Pérez', '1990-05-15', '555-1234', 'juan.perez@example.com', 'Calle 1 #123', CURDATE()),
('María', 'Gómez', '1985-08-22', '555-5678', 'maria.gomez@example.com', 'Avenida 45 #456', CURDATE()),
('Carlos', 'López', '1995-12-01', '555-9012', 'carlos.lopez@example.com', 'Carrera 10 #789', CURDATE()),
('Ana', 'Ruiz', '1992-07-20', '555-3333', 'ana.ruiz@example.com', 'Calle Falsa 123', CURDATE()),
('Luis', 'Ramírez', '1988-03-18', '555-2222', 'luis.ramirez@example.com', 'Calle 50 #321', CURDATE());

-- Empleados
INSERT INTO Empleados (nombre, apellido, cargo, telefono, correo, fecha_contratacion) VALUES
('Laura', 'Torres', 'Instructor', '555-0001', 'laura.torres@example.com', '2023-01-10'),
('Pedro', 'Martínez', 'Recepcionista', '555-0002', 'pedro.martinez@example.com', '2022-10-05'),
('Diana', 'Cruz', 'Instructor', '555-0003', 'diana.cruz@example.com', '2023-05-20');

-- Planes
INSERT INTO Planes (nombre, descripcion, duracion_dias, precio) VALUES
('Mensual', 'Acceso ilimitado por un mes', 30, 50.00),
('Trimestral', 'Acceso ilimitado por tres meses', 90, 135.00),
('Anual', 'Acceso ilimitado por un año', 365, 500.00);

-- Instalaciones
INSERT INTO Instalaciones (nombre, tipo, capacidad) VALUES
('Sala de Pesas', 'Entrenamiento', 20),
('Sala de Yoga', 'Clases', 15),
('Cancha de Squash', 'Deporte', 4),
('Zona de Cardio', 'Entrenamiento', 10);

-- Membresías
INSERT INTO Membresias (id_cliente, id_plan, fecha_inicio, fecha_fin, estado) VALUES
(1, 1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY), 'Activa'),
(2, 2, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 90 DAY), 'Activa'),
(3, 3, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 365 DAY), 'Activa'),
(4, 1, DATE_SUB(CURDATE(), INTERVAL 40 DAY), DATE_SUB(CURDATE(), INTERVAL 10 DAY), 'Inactiva'),
(5, 2, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 90 DAY), 'Activa');

-- Clases
INSERT INTO Clases (nombre, descripcion, id_instalacion, id_empleado, fecha, hora, duracion_minutos) VALUES
('Yoga Básico', 'Clase para principiantes', 2, 1, CURDATE(), '08:00:00', 60),
('Entrenamiento Funcional', 'Ejercicios de fuerza y resistencia', 1, 1, CURDATE(), '10:00:00', 45),
('Spinning', 'Ejercicio cardiovascular intenso', 4, 3, CURDATE(), '18:00:00', 50);

-- Reservas
INSERT INTO Reservas (id_cliente, id_clase, fecha_reserva) VALUES
(1, 1, CURDATE()),
(2, 2, CURDATE()),
(3, 1, CURDATE()),
(4, 3, CURDATE()),
(5, 2, CURDATE());

-- Pagos
INSERT INTO Pagos (id_cliente, id_membresia, fecha_pago, monto, metodo_pago) VALUES
(1, 1, CURDATE(), 50.00, 'Efectivo'),
(2, 2, CURDATE(), 135.00, 'Tarjeta'),
(3, 3, CURDATE(), 500.00, 'Transferencia'),
(5, 5, CURDATE(), 135.00, 'Tarjeta');