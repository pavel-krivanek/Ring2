tests
testInstSize

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	
	aRG2Behavior instanceVariables: #(a b c).
	
	self assert: aRG2Behavior instSize equals: 3.