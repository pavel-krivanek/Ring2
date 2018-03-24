tests
testCreationByParent

	| aRGBehavior parent |
	
	parent := RGEnvironment	new.
	aRGBehavior := RGClass parent: parent.
	self checkBasicPropertiesOf: aRGBehavior.
	self assert: (aRGBehavior hasResolvedName) not.
	self assert: aRGBehavior parent equals: parent.