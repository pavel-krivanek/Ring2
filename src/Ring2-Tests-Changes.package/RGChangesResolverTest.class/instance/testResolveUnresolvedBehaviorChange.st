tests
testResolveUnresolvedBehaviorChange

	"try the case when we are resolving firstly the resolved behavior and after that a change with the unresolved behavior but the same method reference. It should assign the same origin id the both of the chagnes"

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
