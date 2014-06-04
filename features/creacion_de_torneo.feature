Feature: Creacion de Torneo

	Scenario: Creacion Exitosa
		Given no existen torneos
		When creo un torneo llamado "torneo1"
		Then se crea exitosamente el torneo "torneo1"

	Scenario: Creacion Fallida por nombre repetido
		Given no existen torneos
		When creo un torneo llamado "torneo1"
		Then se crea exitosamente el torneo "torneo1"
		When creo un torneo llamado "torneo1"
		Then me indica error porque ya existe un torneo
