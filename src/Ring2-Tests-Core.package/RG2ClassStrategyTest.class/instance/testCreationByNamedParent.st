tests
testCreationByNamedParent

	| aRG2Behavior parent |
	
	parent := RG2Environment	new.
	aRG2Behavior := RG2Class named: #SomeClass parent: parent.
	self checkBasicPropertiesOf: aRG2Behavior.
	self assert: aRG2Behavior name equals: #SomeClass.
	self assert: aRG2Behavior parent equals: parent.