behavior
traitCompositionFor: anRGBehavior

	| realClass realTraitComposition def |
	
	realClass := self realBehaviorFor: anRGBehavior.
	realTraitComposition := realClass traitComposition.
	def := self 	definitionFor: realTraitComposition ifAbsentRegister: [ 
			realTraitComposition asRing2MinimalDefinitionIn: anRGBehavior environment ].
	^ def
