tests
testImplicitEnvironment
	
	RG2Layout allSubclasses do: [ :layoutClass |
		| layout | 
		layout  := layoutClass unnamed.
		self checkImplicitSingleClassEnvironmentOf: layout parent. ].	

