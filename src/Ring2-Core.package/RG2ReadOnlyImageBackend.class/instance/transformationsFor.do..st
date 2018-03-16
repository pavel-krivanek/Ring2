trait composition
transformationsFor: aRG2TraitComposition do: aBlock

	| realBehavior realTraitComposition |
	"^ aRG2TraitComposition pvtTransformationsDo: aBlock"

	realBehavior := self realBehaviorFor: aRG2TraitComposition parent.
	realTraitComposition := realBehavior traitComposition.

	realTraitComposition transformations do: [:transformation |
		| def |
		def := self definitionFor: transformation ifAbsentRegister: [
			transformation asRing2MinimalDefinitionIn: aRG2TraitComposition environment].
		aBlock value: def]
