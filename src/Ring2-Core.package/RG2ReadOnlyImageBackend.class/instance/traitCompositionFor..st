behavior
traitCompositionFor: aRG2BehaviorDefinition

	| realClass realTraitComposition def |
	
	realClass := self realBehaviorFor: aRG2BehaviorDefinition.
	realTraitComposition := realClass traitComposition.
	def := self 	definitionFor: realTraitComposition ifAbsentRegister: [ 
			realTraitComposition asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment ].
	^ def
