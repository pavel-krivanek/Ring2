tests
testSiblings
	| newBehavior |
	
	newBehavior := RG2ClassOld named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior metaclass.
	self assert: newBehavior baseBehavior equals: newBehavior.
	self assert: newBehavior instanceSide equals: newBehavior.
	self assert: newBehavior theNonMetaClass equals: newBehavior.
	
	newBehavior := RG2MetaclassOld named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior baseClass.
	self assert: newBehavior baseBehavior equals: newBehavior baseClass.
	self assert: newBehavior instanceSide equals: newBehavior baseClass.
	self assert: newBehavior theNonMetaClass equals: newBehavior baseClass.

	newBehavior := RG2TraitOld named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior classTrait.
	self assert: newBehavior baseBehavior equals: newBehavior.
	self assert: newBehavior instanceSide equals: newBehavior.
	self assert: newBehavior theNonMetaClass equals: newBehavior.

	newBehavior := RG2MetaclassTraitOld named: #SomeBehaivor.
	self assert: newBehavior sibling equals: newBehavior baseTrait.
	self assert: newBehavior baseBehavior equals: newBehavior baseTrait.
	self assert: newBehavior instanceSide equals: newBehavior baseTrait.
	self assert: newBehavior theNonMetaClass equals: newBehavior baseTrait.
