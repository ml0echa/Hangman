Feature: Inicio
         como jugador
         quiero presionar Start
         para comenzar el juego

	Scenario: veo start
		Given inicio la aplicacion
		Then ver "Start"

	Scenario: Presiono start
		Given Presionar Start
		Then ver "PALABRA"
