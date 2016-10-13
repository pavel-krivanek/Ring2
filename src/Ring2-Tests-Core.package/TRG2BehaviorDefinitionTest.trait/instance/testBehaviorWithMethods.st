tests
testBehaviorWithMethods
	| newBehavior |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior unresolvedProperties includesAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior unresolvedProperties includesAll: #(superclass)).].
	self assert: (newBehavior methods isEmpty).

	1 to: 10 do: [ :i |
		| m |
		m := RG2MethodDefinition named: ('method', i asString) parent: newBehavior. 
		newBehavior addLocalMethod: m ].
	
	self assert: (newBehavior resolvedProperties includes: #localMethods).

	self assert: (newBehavior methods allSatisfy: [:each | each environment = newBehavior environment]).
	
	self assert: (newBehavior methods size = 10).
	(newBehavior methods first: 4) do: [:each | newBehavior removeLocalMethod: each ].
	self assert: (newBehavior methods size = 6).
	newBehavior cleanLocalMethods.
	self assert: (newBehavior methods isEmpty).
