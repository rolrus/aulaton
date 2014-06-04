Feature: Listado de Equipos

	Scenario: Listado de Equipos Existentes
		Given que tengo un equipo "equipo1"
		And otro equipo "equipo2"
		Then la lista de equipos me muestra "equipo1"
		Then la lista de equipos me muestra "equipo2"

	Scenario: No existen equipos
		Given no existen equipos
		Then la lista de equipos esta vacia
