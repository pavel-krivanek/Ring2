tests
testUsedTraits

	| traitAlias trait usedTraits | 
	
	traitAlias := RG2TraitAlias unnamed.
	trait := traitAlias environment ensureTraitNamed: #SomeTrait.
	traitAlias subject: trait.
	usedTraits := traitAlias usedTraits.
	
	self assert: usedTraits size equals: 1.
	self assert: usedTraits anyOne equals: trait.
	
	self assert:  traitAlias trait equals: trait.