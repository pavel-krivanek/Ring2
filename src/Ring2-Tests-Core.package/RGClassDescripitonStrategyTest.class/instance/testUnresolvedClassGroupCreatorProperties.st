tests
testUnresolvedClassGroupCreatorProperties

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: (aRGBehavior superclass propertyNamed: #creator) equals: aRGBehavior.
	self assert: (aRGBehavior metaclass propertyNamed: #creator) equals: aRGBehavior.
	self assert: (aRGBehavior metaclass superclass propertyNamed: #creator) equals: aRGBehavior.
