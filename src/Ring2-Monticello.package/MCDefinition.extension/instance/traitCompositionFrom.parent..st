*Ring2-Monticello
traitCompositionFrom: aStringOrNil parent: aBehavior
	
	| composition transformations |
	
	composition := RG2TraitComposition parent: aBehavior.

	aStringOrNil ifNil: [ ^ composition ].

	transformations := RG2TraitCompositionVisitor new parse: aStringOrNil for: composition.
	transformations do: [ :each |
		composition addTransformation: each ].
	^ composition