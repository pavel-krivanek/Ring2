tests
testUnresolvedClassGroupRoleProperties

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	self assert: (aRG2Behavior superclass propertyNamed: #role) equals: #superclass.
	self assert: (aRG2Behavior metaclass propertyNamed: #role) equals: #metaclass.
	self assert: (aRG2Behavior metaclass superclass propertyNamed: #role) equals: #superclassMetaclass.
