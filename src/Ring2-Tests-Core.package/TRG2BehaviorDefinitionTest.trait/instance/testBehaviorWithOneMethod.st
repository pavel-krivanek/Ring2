tests
testBehaviorWithOneMethod
	| newBehavior method |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior unresolvedProperties includesAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior unresolvedProperties includesAll: #(superclass)).].
	self assert: (newBehavior methods isEmpty).

	method := RG2MethodDefinition named: #someMethod parent: newBehavior.
	self assert: (method environment == newBehavior environment).
	self assert: (newBehavior methods isEmpty). "we do not add the method to the behavior"

	newBehavior := self behaviorClass named: #SomeClass.
	newBehavior cleanLocalMethods.
	self assert: (newBehavior resolvedProperties includes: #localMethods).
	self assert: (newBehavior methods isEmpty).

	method := RG2MethodDefinition named: #someMethod parent: newBehavior.
	newBehavior addLocalMethod: method.
	self assert: (method environment == newBehavior environment).
	self assert: (newBehavior resolvedProperties includes: #localMethods).
	self assert: (newBehavior methods anyOne name = #someMethod).
	newBehavior removeLocalMethod: method.
	self assert: (newBehavior methods isEmpty).
	self assert: (newBehavior resolvedProperties includes: #localMethods).

	
	