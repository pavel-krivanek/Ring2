tests
testFiltering

	| env |
	
	env := RGEnvironment new.
	env backend: (RGFilteredReadOnlyImageBackend for: env).
	
	self assert: (env ask classNamed: #Object) notNil.
	self assert: (env ask classNamed: #RGObject) isNil.
	
	