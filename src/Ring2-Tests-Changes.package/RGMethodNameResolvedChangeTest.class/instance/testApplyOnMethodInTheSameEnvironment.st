tests
testApplyOnMethodInTheSameEnvironment

	| method  change result |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	result := change applyIn: method environment.
	
	self assert: result equals: method.

	self assert: method name equals: #someMethod.		