tests
testUnresolvedClassGroupRoleProperties

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: (aRGBehavior superclass propertyNamed: #role) equals: #superclass.
	self assert: (aRGBehavior metaclass propertyNamed: #role) equals: #metaclass.
	self assert: (aRGBehavior metaclass superclass propertyNamed: #role) equals: #superclassMetaclass.
