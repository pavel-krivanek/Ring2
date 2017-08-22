tests
testFiltering

	| env |
	
	env := RG2Environment new.
	env backend: (RG2FilteredReadOnlyImageBackend for: env).
	
	self assert: (env ask classNamed: #Object) notNil.
	self assert: (env ask classNamed: #RG2Definition) isNil.
	
	