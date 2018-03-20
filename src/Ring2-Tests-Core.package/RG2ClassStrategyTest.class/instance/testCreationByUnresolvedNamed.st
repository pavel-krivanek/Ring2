tests
testCreationByUnresolvedNamed

	| aRG2Behavior parent |
	
	parent := RG2Environment	new.
	aRG2Behavior := RG2Class unresolvedNamed: #SomeClass withParent: parent.
	self checkBasicPropertiesOf: aRG2Behavior.
	self assert: aRG2Behavior name equals: #SomeClass.
	self assert: aRG2Behavior parent equals: parent.
	self assert: aRG2Behavior isRing2Resolved not.
	