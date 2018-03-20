tests
testCreationByNamed

	| aRG2Behavior |
	
	aRG2Behavior := RG2Class named: #SomeClass.
	self checkBasicPropertiesOf: aRG2Behavior.
	self assert: aRG2Behavior name equals: #SomeClass.
