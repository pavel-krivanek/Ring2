tests
testInstanceVariablesString

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newTrait.
	self assert: aRG2Behavior instanceVariablesString equals: ''