tests
testCreationByParent

	| aRG2Behavior parent |
	
	parent := RG2Environment	new.
	aRG2Behavior := RG2Class parent: parent.
	self checkBasicPropertiesOf: aRG2Behavior.
	self assert: (aRG2Behavior hasResolved: #name) not.
	self assert: aRG2Behavior parent equals: parent.