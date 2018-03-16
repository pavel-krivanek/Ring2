utilities
checkImplicitSingleTraitEnvironmentOf: aRG2Trait
	
	self assert: aRG2Trait environment ask behaviors size equals: 10.
	self assert: aRG2Trait environment ask packages size equals: 5.

	self checkHierarchyConsistencyOf: aRG2Trait metaclass.
	
	self assert: (aRG2Trait ~~ aRG2Trait classTrait).
	self assert: (aRG2Trait superclass == aRG2Trait superclass).
	self assert: (aRG2Trait classTrait superclass == aRG2Trait classTrait superclass).
	
	
	
	
