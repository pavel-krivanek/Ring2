tests
testBehavior
	| newBehavior method |
	newBehavior := self behaviorClass named: #SomeClass.
	self deny: (newBehavior includesSelector: #method).
	method := RG2Method named: #method parent: newBehavior.
	newBehavior addLocalMethod: method.
	self deny: method isBehavior.
	self assert: (newBehavior includesSelector: #method).
	self assert: (newBehavior allInstVarNames isEmpty).
	self assert: (newBehavior allSlots isEmpty).
	self assert: (newBehavior bindingOf: #someVariable) isNil.
	self assert: (newBehavior classVariablesBindings isEmpty).
	
	self deny: (newBehavior isRing2FullyUnresolved).

	self deny: newBehavior hasTraitComposition.	
	
