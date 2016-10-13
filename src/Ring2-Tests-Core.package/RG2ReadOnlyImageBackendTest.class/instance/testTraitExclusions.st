tests
testTraitExclusions

	| env traitExclusion |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	traitExclusion := (MOPTestClassB traitComposition transformations second) asRing2MinimalDefinitionIn: env.
	self assert: traitExclusion isTraitExclusion.
	self assert: traitExclusion subject name equals: #Trait2.
	self assert: traitExclusion exclusions size equals: 1.
	self assert: traitExclusion exclusions first equals: #c.

	
	
	