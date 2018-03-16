*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment
	| def |
	^ aRG2Environment backend
		definitionFor: self
		ifAbsentRegister: [ | definingClass |
			definingClass := Smalltalk environment allBehaviors detect: [ :b | b traitComposition == self or: [b traitComposition transformations includes: self]].

			def := RG2TraitCompositionDefinition parent: (definingClass asRing2MinimalDefinitionIn: aRG2Environment).

			def propertyNamed: #realObject put: self.

			"we need to set real object because we cannot simply identify the real object from the model data"
			def ]