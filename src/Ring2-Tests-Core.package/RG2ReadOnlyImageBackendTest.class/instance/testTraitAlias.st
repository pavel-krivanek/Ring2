tests
testTraitAlias

	| env traitAlias |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	traitAlias := (MOPTestClassD traitComposition transformations first) asRing2MinimalDefinitionIn: env.
	self assert: traitAlias isTraitAlias.
	self assert: traitAlias subject name equals: #Trait2.
	self assert: traitAlias aliases size equals: 1.
	self assert: traitAlias aliases first key == #c3.
	self assert: traitAlias aliases first value == #c2.	
	
	
	