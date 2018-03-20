tests
testUnresolvedClassGroupCreatorProperties

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	self assert: (aRG2Behavior superclass propertyNamed: #creator) equals: aRG2Behavior.
	self assert: (aRG2Behavior metaclass propertyNamed: #creator) equals: aRG2Behavior.
	self assert: (aRG2Behavior metaclass superclass propertyNamed: #creator) equals: aRG2Behavior.
