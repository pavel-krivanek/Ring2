tests
testNewTraitExlusion

	| traitExclusion | 
	traitExclusion  := RG2TraitExclusionDefinition unnamed.
	self assert: (traitExclusion isRing2Resolved).
	self assert: (traitExclusion hasUnresolvedAll: #(name subject exclusions)).
	self assert: (traitExclusion isTraitTransformation).
	