tests
testGlobalVariable

	| env real globalVariable |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	real := (Smalltalk globals associations detect: [ :each | each key = #Smalltalk ]).
	globalVariable := real asRing2MinimalDefinitionIn: env.
	
	self assert: (globalVariable name = #Smalltalk)