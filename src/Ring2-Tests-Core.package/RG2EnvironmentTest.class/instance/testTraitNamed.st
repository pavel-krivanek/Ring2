tests
testTraitNamed

	| env trait | 
	
	env := RG2Environment new.
	trait := env ensureTraitNamed: 'SomeTrait'.
	self assert: (env ask traitNamed: 'SomeTrait') equals: trait.
	
	env := RG2Environment new.
	trait := env ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: (env ask traitNamed: 'SomeTrait classTrait') equals: trait.
	
	env := RG2Environment new.
	trait := env ensureClassNamed: 'SomeTrait'.
	self assert: (env ask traitNamed: 'SomeTrait') equals: nil.