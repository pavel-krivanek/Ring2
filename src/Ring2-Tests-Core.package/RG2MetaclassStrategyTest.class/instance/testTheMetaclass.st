tests
testTheMetaclass

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newMetaclass.
	self assert: (aRG2Behavior theMetaClass) equals: aRG2Behavior.