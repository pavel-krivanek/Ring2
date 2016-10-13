accessing
ask 

	^ queryInterface ifNil: [ queryInterface := RG2EnvironmentQueryInterface for: self ].