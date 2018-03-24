initialization
add: anRGChange

	environment 
		ifNil: [ self environment: anRGChange environment ]
		ifNotNil: [ 
			self environment = anRGChange environment 
				ifFalse: [ RGWrongEnvironment signal ] ].
	
	self changes add: anRGChange.
	
	