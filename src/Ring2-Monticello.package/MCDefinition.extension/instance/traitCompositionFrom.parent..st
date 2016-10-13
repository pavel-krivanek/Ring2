*Ring2-Monticello
traitCompositionFrom: aString parent: aBehavior
	
	| composition transformations |
	composition := RG2TraitCompositionDefinition parent: aBehavior.
	transformations := RG2TraitCompositionVisitor new parse: aString for: composition.
	transformations do: [ :each |
		composition addTransformation: each ].
	^ composition