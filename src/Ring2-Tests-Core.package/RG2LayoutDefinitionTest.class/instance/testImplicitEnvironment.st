tests
testImplicitEnvironment
	
	RG2LayoutDefinition allSubclasses do: [ :layoutClass |
		| layout | 
		layout  := layoutClass unnamed.
		self checkImplicitSingleClassEnvironmentOf: layout parent. ].	

