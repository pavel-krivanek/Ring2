tests
testClassVariable

	| env classVariable |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	classVariable := (UIManager classVariableNamed: #Default) asRing2MinimalDefinitionIn: env.
	self assert: classVariable isClassVariable.
	self assert: classVariable name equals: #Default.
	self assert: classVariable parent name = #UIManager.

	
