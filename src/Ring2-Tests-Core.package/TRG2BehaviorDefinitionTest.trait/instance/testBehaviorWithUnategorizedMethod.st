tests
testBehaviorWithUnategorizedMethod
	| newBehavior method |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self assert: (newBehavior unresolvedProperties includesAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior unresolvedProperties includesAll: #(superclass)).].
	self assert: (newBehavior methods isEmpty).
	self assert: (newBehavior protocols isEmpty).

	method := RG2MethodDefinition named: #someMethod parent: newBehavior. 
	newBehavior addLocalMethod: method.
	
	self assert: (newBehavior resolvedProperties includes: #protocols).
	self assert: newBehavior protocols size equals: 1.
	self assert: newBehavior protocols first name equals: 'as yet unclassified'.
	newBehavior cleanProtocols.

	self assert: newBehavior protocols size equals: 1.
	self assert: newBehavior protocols first name equals: 'as yet unclassified'.
	
	newBehavior cleanLocalMethods.
	self assert: (newBehavior protocols isEmpty).
	
