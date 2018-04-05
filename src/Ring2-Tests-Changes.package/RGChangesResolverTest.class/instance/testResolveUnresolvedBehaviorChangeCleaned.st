tests
testResolveUnresolvedBehaviorChangeCleaned

	| class method change changeCopy resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	changeCopy := change copy.
	changeCopy setPath: {nil. #someName}.
	
	resolvedChanges := resolver resolve: { change. changeCopy. }.
	
	self deny: resolvedChanges first originId equals: resolvedChanges second originId.
	self deny: resolvedChanges second behaviorName equals: #SomeClass.
	self assert: resolvedChanges second methodName equals: #someName.	
