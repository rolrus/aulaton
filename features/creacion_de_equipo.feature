Feature: Creacion de Equipo

	Scenario: Creacion Exitosa
		Given no existen equipos
		When voy a crear un equipo
		And creo un equipo llamado "equipo1"
		Then se crea exitosamente el equipo "equipo1"

	Scenario: Creacion Fallida por nombre repetido
		Given no existen equipos
		When voy a crear un equipo
		And creo un equipo llamado "equipo1"
		Then se crea exitosamente el equipo "equipo1"
		When vuelvo a crear el mismo nombre "equipo1"
		Then me indica error porque ya existe un equipo
