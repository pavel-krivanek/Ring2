trait composition
transformationsFor: aRG2TraitCompositionDefinition do: aBlock

	| realBehavior realTraitComposition |
	"^ aRG2TraitCompositionDefinition pvtTransformationsDo: aBlock"

	realBehavior := self realBehaviorFor: aRG2TraitCompositionDefinition parent.
	realTraitComposition := realBehavior traitComposition.

	realTraitComposition transformations do: [:transformation |
		| def |
		def := self definitionFor: transformation ifAbsentRegister: [
			transformation asRing2MinimalDefinitionIn: aRG2TraitCompositionDefinition environment].
		aBlock value: def]
