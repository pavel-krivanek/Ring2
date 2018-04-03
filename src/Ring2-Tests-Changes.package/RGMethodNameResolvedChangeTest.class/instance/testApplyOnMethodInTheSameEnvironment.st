tests
testApplyOnMethodInTheSameEnvironment

	| method  change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	change applyIn: method environment.

	self assert: method name equals: #someMethod.		