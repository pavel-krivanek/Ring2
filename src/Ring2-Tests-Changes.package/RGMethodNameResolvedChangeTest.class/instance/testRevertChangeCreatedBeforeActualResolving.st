tests - revert
testRevertChangeCreatedBeforeActualResolving

	"test if we can revert a change created before the actual method name resolving. It should unresolve the method name"

	| method change result |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	result := change revertIn: method environment.
	self assert: result equals: method.
	
	self assert: method hasResolvedName not.
	self assert: (method environment ask behaviorNamed: #someName) equals: nil.