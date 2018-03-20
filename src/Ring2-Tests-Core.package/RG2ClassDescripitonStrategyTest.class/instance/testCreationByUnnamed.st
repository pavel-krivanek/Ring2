tests
testCreationByUnnamed

	| aRG2Behavior parent |
	
	aRG2Behavior := RG2Class parent: parent.
	self checkBasicPropertiesOf: aRG2Behavior.
	self assert: (aRG2Behavior hasResolved: #name) not.
