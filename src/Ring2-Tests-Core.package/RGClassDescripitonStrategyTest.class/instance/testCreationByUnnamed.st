tests
testCreationByUnnamed

	| aRGBehavior parent |
	
	aRGBehavior := RGClass parent: parent.
	self checkBasicPropertiesOf: aRGBehavior.
	self assert: (aRGBehavior hasResolvedName) not.
