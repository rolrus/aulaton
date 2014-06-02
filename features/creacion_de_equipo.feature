Feature: Creacion de Equipo

	Scenario: Creacion Exitosa
		Given no existen equipos
		When creo un equipo llamado "equipo1"
		Then se crea exitosamente el equipo "equipo1"

	Scenario: Creacion Fallida por nombre repetido
		Given no existen equipos
		When creo un equipo llamado "equipo1"
		Then se crea exitosamente el equipo "equipo1"
		When creo un equipo llamado "equipo1"
		Then me indica error porque ya existe un equipo "equipo1"
