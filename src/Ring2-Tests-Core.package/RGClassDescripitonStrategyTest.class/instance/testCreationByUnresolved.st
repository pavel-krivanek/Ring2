tests
testCreationByUnresolved

	| aRGBehavior |
	
	aRGBehavior := RGClass unresolved.
	self checkBasicPropertiesOf: aRGBehavior.
	self assert: (aRGBehavior hasResolvedName) not.
	self assert: aRGBehavior isRing2Resolved not.
