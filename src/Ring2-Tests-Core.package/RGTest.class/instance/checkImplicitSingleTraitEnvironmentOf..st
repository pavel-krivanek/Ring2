utilities
checkImplicitSingleTraitEnvironmentOf: aRGTrait
	
	self assert: aRGTrait environment ask behaviors size equals: 10.
	self assert: aRGTrait environment ask packages size equals: 5.

	self checkHierarchyConsistencyOf: aRGTrait metaclass.
	
	self assert: (aRGTrait ~~ aRGTrait classTrait).
	self assert: (aRGTrait superclass == aRGTrait superclass).
	self assert: (aRGTrait classTrait superclass == aRGTrait classTrait superclass).
	
	
	
	
