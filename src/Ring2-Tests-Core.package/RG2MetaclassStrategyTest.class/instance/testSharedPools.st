tests
testSharedPools

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newMetaclass.
	self assert: aRG2Behavior sharedPools isEmpty.