initialization
add: aRG2Change

	environment 
		ifNil: [ self environment: aRG2Change environment ]
		ifNotNil: [ 
			self environment = aRG2Change environment 
				ifFalse: [ RG2WrongEnvironment signal ] ].
	
	self changes add: aRG2Change.
	
	