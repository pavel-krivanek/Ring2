tests
testSetInstanceVariables

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	
	aRG2Behavior instanceVariables: #(a b c).
	
	self assert: aRG2Behavior instVarNames equals: #(a b c).