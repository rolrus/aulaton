Feature: Listado de Torneos

	Scenario: Listado de Torneos Existentes
		Given que tengo un torneo "torneo1"
		And otro torneo "torneo2"
		Then la lista de torneos me muestra "torneo1"
		Then la lista de torneos me muestra "torneo2"

	Scenario: No existen Torneos
		Given no existen torneos
		Then la lista de torneos esta vacia
