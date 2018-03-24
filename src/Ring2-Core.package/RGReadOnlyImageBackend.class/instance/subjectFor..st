trait transormation
subjectFor: aRGTraitTransformation

	^ (aRGTraitTransformation propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) subject asRing2MinimalDefinitionIn: aRGTraitTransformation environment