isGameController: joystickIndex
	^ (JoystickMap at: joystickIndex ifAbsent: [ ^ false ]) isGameController