behavior
traitCompositionFor: aRG2Behavior

	| realClass realTraitComposition def |
	
	realClass := self realBehaviorFor: aRG2Behavior.
	realTraitComposition := realClass traitComposition.
	def := self 	definitionFor: realTraitComposition ifAbsentRegister: [ 
			realTraitComposition asRing2MinimalDefinitionIn: aRG2Behavior environment ].
	^ def
