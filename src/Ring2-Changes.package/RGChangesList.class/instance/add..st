initialization
add: anRGChange

	self environment = anRGChange environment 
		ifFalse: [ RGWrongEnvironment signal ].
	
	self changes add: anRGChange.
	
	