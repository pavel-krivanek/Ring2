tests
testClassVariablesString

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newTrait.
	self assert: aRG2Behavior classVariablesString equals: ''