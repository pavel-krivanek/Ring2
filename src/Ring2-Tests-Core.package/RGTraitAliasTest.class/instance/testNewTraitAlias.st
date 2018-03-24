tests
testNewTraitAlias

	| traitAlias | 
	traitAlias  := RGTraitAlias unnamed.
	self assert: (traitAlias isRing2Resolved).
	self assert: (traitAlias hasUnresolvedAll: #(name subject aliases)).
	self assert: (traitAlias isTraitTransformation).
	