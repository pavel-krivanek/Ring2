tests
testResolveUnresolvedBehaviorChange

	| class method change changeCopy resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	changeCopy := change copy.
	changeCopy setPath: {nil. #someName}.
	
	resolvedChanges := resolver resolve: { change. changeCopy. }.
	
	self assert: resolvedChanges first originId equals: resolvedChanges second originId.
	self assert: resolvedChanges second behaviorName equals: #SomeClass.
	self assert: resolvedChanges second methodName equals: #someName.	
