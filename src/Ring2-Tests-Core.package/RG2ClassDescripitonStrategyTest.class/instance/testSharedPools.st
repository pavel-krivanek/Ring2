tests
testSharedPools

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	
	self assert: aRG2Behavior sharedPools isEmpty.