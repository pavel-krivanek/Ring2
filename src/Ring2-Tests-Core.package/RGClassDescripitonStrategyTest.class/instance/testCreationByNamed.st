tests
testCreationByNamed

	| aRGBehavior |
	
	aRGBehavior := RGClass named: #SomeClass.
	self checkBasicPropertiesOf: aRGBehavior.
	self assert: aRGBehavior name equals: #SomeClass.
