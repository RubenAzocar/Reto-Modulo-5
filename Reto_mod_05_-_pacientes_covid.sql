--1.- Listar todos los pacientes en fase 2 o 3.--
SELECT * FROM pacientes_covid
WHERE fase IN (2, 3);

--2,. Mostrar el promedio de los pacientes en fase 1.--
SELECT AVG(edad) AS promedio_edad_fase_1
FROM pacientes_covid
WHERE fase = 1;

--3.- Mostrar la mayor cantidad de dias enfermo que lleva un paciente en fase 3.--
SELECT MAX(dias_enfermo) AS max_dias_enfermo_fase_3
FROM pacientes_covid
WHERE fase = 3;

--4.- Mostrar el promedio de dias enfermo de los pacientes enfase 2.--
SELECT AVG(dias_enfermo) AS promedio_dias_enfermo_fase_2
FROM pacientes_covid
WHERE fase = 2;

--5.- Mostrar los pacientes con edades entre 25 y 39 que estan en fase 1 o 3.--
SELECT * FROM pacientes_covid
WHERE edad BETWEEN 25 AND 39
AND fase IN (1, 3);

--6.- Mostrar todos los pacientes con rut terminado en numero que esten en un hospital empezando en S.--
SELECT * FROM pacientes_covid
WHERE rut SIMILAR TO '%[0-9]'
AND hospital LIKE 'S%';

--7.- Mostrar el promedio de edad de pacientes mujeres.--
SELECT AVG(edad) AS promedio_edad_mujeres
FROM pacientes_covid
WHERE nombre IN ('Paula', 'Mariela', 'Patricia', 'Camila', 'Javiera');

--8.- Mostrar la cantidad total de pacientes en fase 1 o 3.--
SELECT COUNT(*) AS total_pacientes_fase_1_o_3
FROM pacientes_covid
WHERE fase IN (1, 3);
