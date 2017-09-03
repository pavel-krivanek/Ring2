tests
testTraitComposition

	| env traitComposition |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	traitComposition := RG2TestClass traitComposition asRing2MinimalDefinitionIn: env.
	self assert: traitComposition isTraitComposition.
	self assert: traitComposition transformations size equals: 1.
	self assert: traitComposition transformations first name equals: #RG2TestTrait.
	self assert: traitComposition transformations first isTrait.
	self assert: traitComposition transformations first isRing2Object.
	
	self assert: traitComposition parent traitComposition equals: traitComposition.
	