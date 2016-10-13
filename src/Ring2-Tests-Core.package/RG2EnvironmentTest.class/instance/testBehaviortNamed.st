tests
testBehaviortNamed

	| env behavior | 
	
	env := RG2Environment new.
	behavior := env ensureClassNamed: 'SomeClass'.
	self assert: (env ask behaviorNamed: 'SomeClass') equals: behavior.

	env := RG2Environment new.
	behavior := env ensureClassNamed: 'SomeClass class'.
	self assert: (env ask behaviorNamed: 'SomeClass class') equals: behavior.
	
	env := RG2Environment new.
	behavior := env ensureClassNamed: 'SomeTrait'.
	self assert: (env ask behaviorNamed: 'SomeTrait') equals: behavior.
	
	env := RG2Environment new.
	behavior := env ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: (env ask behaviorNamed: 'SomeTrait classTrait') equals: behavior.
	
	env := RG2Environment new.
	self assert: (env ask behaviorNamed: 'NonexistingBehavior') equals: nil.
	self assert: (env ask behaviorNamed: 'NonexistingBehavior class') equals: nil.
	self assert: (env ask behaviorNamed: 'NonexistingBehavior classTrait') equals: nil.
