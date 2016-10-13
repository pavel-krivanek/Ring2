trait transormation
subjectFor: aRG2TraitTransformationDefinition

	^ (aRG2TraitTransformationDefinition propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) subject asRing2MinimalDefinitionIn: aRG2TraitTransformationDefinition environment