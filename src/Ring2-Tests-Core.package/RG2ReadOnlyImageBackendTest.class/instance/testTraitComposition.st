tests
testTraitComposition

	| env traitComposition |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	traitComposition := Behavior traitComposition asRing2MinimalDefinitionIn: env.
	self assert: traitComposition isTraitComposition.
	self assert: traitComposition transformations size equals: 1.
	self assert: traitComposition transformations first name equals: #TBehavior.
	self assert: traitComposition transformations first isTrait.
	self assert: traitComposition transformations first isRing2Object.
	
	