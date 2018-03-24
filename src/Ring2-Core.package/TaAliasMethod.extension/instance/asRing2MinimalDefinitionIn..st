*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment
	^ aRGEnvironment backend
		definitionFor: self
		ifAbsentRegister: [ | definingClass def |
			definingClass := Smalltalk environment allBehaviors detect: [ :b | b traitComposition transformations includes: self ].

			definingClass traitComposition == self
				ifTrue: [ def := RGTraitAlias parent: (definingClass asRing2MinimalDefinitionIn: aRGEnvironment) ]
				ifFalse: [ def := RGTraitAlias parent: (definingClass traitComposition asRing2MinimalDefinitionIn: aRGEnvironment) ].


			"we need to set real object because we cannot simply identify the real object from the model data"
			def propertyNamed: #realObject put: self.
			def ]