utilities
checkImplicitSingleTraitEnvironmentOf: aRG2TraitDefinition
	
	self assert: aRG2TraitDefinition environment ask behaviors size equals: 10.
	self assert: aRG2TraitDefinition environment ask packages size equals: 5.

	self checkHierarchyConsistencyOf: aRG2TraitDefinition metaclass.
	
	self assert: (aRG2TraitDefinition ~~ aRG2TraitDefinition classTrait).
	self assert: (aRG2TraitDefinition superclass == aRG2TraitDefinition superclass).
	self assert: (aRG2TraitDefinition classTrait superclass == aRG2TraitDefinition classTrait superclass).
	
	
	
	
