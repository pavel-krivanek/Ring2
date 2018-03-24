*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment
	| def |
	^ anRGEnvironment backend
		definitionFor: self
		ifAbsentRegister: [ | definingClass |
			definingClass := Smalltalk environment allBehaviors detect: [ :b | b traitComposition == self or: [b traitComposition transformations includes: self]].

			def := RGTraitComposition parent: (definingClass asRing2MinimalDefinitionIn: anRGEnvironment).

			def propertyNamed: #realObject put: self.

			"we need to set real object because we cannot simply identify the real object from the model data"
			def ]