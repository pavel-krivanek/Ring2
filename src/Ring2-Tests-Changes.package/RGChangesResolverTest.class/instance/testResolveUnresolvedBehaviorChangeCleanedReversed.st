tests
testResolveUnresolvedBehaviorChangeCleanedReversed

	"try to resolve two mehtod changes where the second one looses the reference to the original method object. It should be correctly resolved from the name"

	| class method change changeCopy resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	changeCopy := change copy.
		
	resolvedChanges := resolver resolve: { change. changeCopy }.
	
	self assert: resolvedChanges first originId equals: resolvedChanges second originId.
	self assert: resolvedChanges second behaviorName equals: #SomeClass.
	self assert: resolvedChanges second methodName equals: #someName.	
