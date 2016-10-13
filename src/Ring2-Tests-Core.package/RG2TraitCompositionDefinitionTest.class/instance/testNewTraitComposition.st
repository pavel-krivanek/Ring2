tests
testNewTraitComposition

	| traitComposition | 
	traitComposition  := RG2TraitCompositionDefinition unnamed.
	self assert: (traitComposition isRing2Resolved).
	self assert: (traitComposition unresolvedProperties includesAll: #(name transformations)).
	self assert: (traitComposition isTraitComposition).
	