tests
testClassDescriptionMakeResolved

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	
	self deny: (aRG2Behavior hasResolved: #layout).
	aRG2Behavior makeResolved.
	self assert: (aRG2Behavior hasResolved: #layout).
	
	