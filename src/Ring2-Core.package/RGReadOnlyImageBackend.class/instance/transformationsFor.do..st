trait composition
transformationsFor: aRGTraitComposition do: aBlock

	| realBehavior realTraitComposition |
	"^ aRGTraitComposition pvtTransformationsDo: aBlock"

	realBehavior := self realBehaviorFor: aRGTraitComposition parent.
	realTraitComposition := realBehavior traitComposition.

	realTraitComposition transformations do: [:transformation |
		| def |
		def := self definitionFor: transformation ifAbsentRegister: [
			transformation asRing2MinimalDefinitionIn: aRGTraitComposition environment].
		aBlock value: def]
