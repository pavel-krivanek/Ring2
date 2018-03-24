tests
testGlobalVariable

	| env real globalVariable |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	real := (Smalltalk globals associations detect: [ :each | each key = #Smalltalk ]).
	globalVariable := real asRing2MinimalDefinitionIn: env.
	
	self assert: (globalVariable name = #Smalltalk)