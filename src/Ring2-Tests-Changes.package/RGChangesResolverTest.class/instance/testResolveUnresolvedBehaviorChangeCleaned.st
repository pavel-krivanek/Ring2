tests
testResolveUnresolvedBehaviorChangeCleaned

	| class method change changeCopy1 changeCopy2  changeCopy3 resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	changeCopy1 := change copy.
	changeCopy2 := change copy.
	changeCopy3 := change copy.
	changeCopy2 setPath: {nil. #someName}.
	changeCopy3 setPath: {nil. #someName}.
	
	resolvedChanges := resolver resolve: { change. changeCopy1. changeCopy2. changeCopy3.}.
	
	self assert: resolvedChanges first originId equals: resolvedChanges second originId.
	self deny: resolvedChanges first originId equals: resolvedChanges third originId.
	self deny: resolvedChanges third behaviorName equals: #SomeClass.
	self assert: resolvedChanges third methodName equals: #someName.	
	self deny: resolvedChanges third originId equals: resolvedChanges fourth originId.
