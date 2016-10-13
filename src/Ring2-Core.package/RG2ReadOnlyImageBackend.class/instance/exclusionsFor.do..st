trait exclusion
exclusionsFor: aRG2TraitExclusionDefinition do: aBlock

	^ (aRG2TraitExclusionDefinition propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) exclusions do: [:each | aBlock value: each ]