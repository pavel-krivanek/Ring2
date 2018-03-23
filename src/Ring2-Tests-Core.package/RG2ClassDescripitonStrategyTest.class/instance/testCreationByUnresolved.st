tests
testCreationByUnresolved

	| aRG2Behavior |
	
	aRG2Behavior := RG2Class unresolved.
	self checkBasicPropertiesOf: aRG2Behavior.
	self assert: (aRG2Behavior hasResolvedName) not.
	self assert: aRG2Behavior isRing2Resolved not.
