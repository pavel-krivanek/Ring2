tests
testBehaviorWithProtocols
	| newBehavior |
	
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior unresolvedProperties includesAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior unresolvedProperties includesAll: #(superclass)).].
	self assert: (newBehavior methods isEmpty).

	1 to: 10 do: [ :i |
		| p |
		p := RG2ProtocolDefinition named: ('protocol', i asString) parent: newBehavior. 
		newBehavior addProtocol: p ].
	
	self assert: (newBehavior resolvedProperties includes: #protocols).

	self assert: (newBehavior protocols allSatisfy: [:each | each environment = newBehavior environment]).
	
	self assert: (newBehavior protocols size = 10).
	(newBehavior protocols first: 4) do: [:each | newBehavior removeProtocol: each ].
	self assert: (newBehavior protocols size = 6).
	newBehavior cleanProtocols.
	self assert: (newBehavior protocols isEmpty).
