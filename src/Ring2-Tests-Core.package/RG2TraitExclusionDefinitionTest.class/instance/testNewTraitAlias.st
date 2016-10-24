tests
testNewTraitAlias

	| traitAlias | 
	traitAlias  := RG2TraitAliasDefinition unnamed.
	self assert: (traitAlias isRing2Resolved).
	self assert: (traitAlias hasUnresolvedAll: #(name subject aliases)).
	self assert: (traitAlias isTraitTransformation).
	