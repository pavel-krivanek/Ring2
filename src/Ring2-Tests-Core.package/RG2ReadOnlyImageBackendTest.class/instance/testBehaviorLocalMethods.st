tests
testBehaviorLocalMethods

	| env1 point selectors |
	
	env1 := RG2Environment new.
	env1 backend: (RG2ReadOnlyImageBackend for: env1).

	point := Point asRing2MinimalDefinitionIn: env1.
	
	self assert: point ask localMethods size equals: Point localMethods size.
	self assert: (point ask localMethods 
		allSatisfy: [:each | each isKindOf: RG2MethodDefinition]).
	selectors := point ask localMethods collect: [ :each | each ask selector ].
	self assert: (selectors allSatisfy: #isSymbol).
	self assert: selectors asSortedCollection equals: Point localSelectors asSortedCollection.
	
	