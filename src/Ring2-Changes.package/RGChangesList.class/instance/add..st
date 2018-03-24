initialization
add: aRGChange

	environment 
		ifNil: [ self environment: aRGChange environment ]
		ifNotNil: [ 
			self environment = aRGChange environment 
				ifFalse: [ RGWrongEnvironment signal ] ].
	
	self changes add: aRGChange.
	
	