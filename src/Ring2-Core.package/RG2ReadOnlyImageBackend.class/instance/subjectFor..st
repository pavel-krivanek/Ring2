trait transormation
subjectFor: aRG2TraitTransformation

	^ (aRG2TraitTransformation propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) subject asRing2MinimalDefinitionIn: aRG2TraitTransformation environment