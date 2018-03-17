tests
testCreationByMethod

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newMetaclass.
	self assert: (aRG2Behavior isBehavior).	
	self assert: (aRG2Behavior behaviorStrategy isMetaclassStrategy).