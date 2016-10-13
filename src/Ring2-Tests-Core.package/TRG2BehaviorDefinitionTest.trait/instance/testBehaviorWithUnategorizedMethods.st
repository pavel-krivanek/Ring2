tests
testBehaviorWithUnategorizedMethods
	| newBehavior method1 method2 |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior unresolvedProperties includesAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior unresolvedProperties includesAll: #(superclass)).].
	self assert: (newBehavior methods isEmpty).
	self assert: (newBehavior protocols isEmpty).

	method1 := RG2MethodDefinition named: #method1 parent: newBehavior. 
	method2 := RG2MethodDefinition named: #method2 parent: newBehavior. 
	newBehavior addLocalMethod: method1.
	newBehavior addLocalMethod: method2.
	
	self assert: (newBehavior resolvedProperties includes: #protocols).
	self assert: (newBehavior protocols size = 1).
	self assert: (newBehavior protocols first name = 'as yet unclassified').
	newBehavior cleanProtocols.

	self assert: (newBehavior protocols size = 1).
	self assert: (newBehavior protocols first name = 'as yet unclassified').
	
	newBehavior cleanLocalMethods.
	self assert: (newBehavior protocols isEmpty).
	
