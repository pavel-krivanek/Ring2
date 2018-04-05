tests - apply
testApplyOnMethodInTheSameEnvironment

	"test if we can apply a change in the same environment. It should resolve and set the correct method name."

	| method  change result |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	result := change applyIn: method environment.
	
	self assert: result equals: method.

	self assert: method name equals: #someMethod.		