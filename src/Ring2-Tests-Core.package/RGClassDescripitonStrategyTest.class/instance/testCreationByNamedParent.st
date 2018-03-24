tests
testCreationByNamedParent

	| aRGBehavior parent |
	
	parent := RGEnvironment	new.
	aRGBehavior := RGClass named: #SomeClass parent: parent.
	self checkBasicPropertiesOf: aRGBehavior.
	self assert: aRGBehavior name equals: #SomeClass.
	self assert: aRGBehavior parent equals: parent.
