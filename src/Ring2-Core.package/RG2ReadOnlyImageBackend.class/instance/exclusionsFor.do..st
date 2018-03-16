trait exclusion
exclusionsFor: aRG2TraitExclusion do: aBlock

	^ (aRG2TraitExclusion propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) exclusions do: [:each | aBlock value: each ]