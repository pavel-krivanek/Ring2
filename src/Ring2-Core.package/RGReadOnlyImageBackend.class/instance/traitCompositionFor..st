behavior
traitCompositionFor: aRGBehavior

	| realClass realTraitComposition def |
	
	realClass := self realBehaviorFor: aRGBehavior.
	realTraitComposition := realClass traitComposition.
	def := self 	definitionFor: realTraitComposition ifAbsentRegister: [ 
			realTraitComposition asRing2MinimalDefinitionIn: aRGBehavior environment ].
	^ def
