tests
testNewTraitComposition

	| traitComposition | 
	traitComposition  := RG2TraitComposition unnamed.
	self assert: (traitComposition isRing2Resolved).
	self assert: (traitComposition hasUnresolvedAll: #(name transformations)).
	self assert: (traitComposition isTraitComposition).
	