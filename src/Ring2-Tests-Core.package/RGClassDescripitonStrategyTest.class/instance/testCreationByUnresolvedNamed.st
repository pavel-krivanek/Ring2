tests
testCreationByUnresolvedNamed

	| aRGBehavior parent |
	
	parent := RGEnvironment	new.
	aRGBehavior := RGClass unresolvedNamed: #SomeClass withParent: parent.
	self checkBasicPropertiesOf: aRGBehavior.
	self assert: aRGBehavior name equals: #SomeClass.
	self assert: aRGBehavior parent equals: parent.
	self assert: aRGBehavior isRing2Resolved not.
	