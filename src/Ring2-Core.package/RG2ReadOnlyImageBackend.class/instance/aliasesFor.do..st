trait alias
aliasesFor: aRG2TraitAlias do: aBlock

	^ (aRG2TraitAlias propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) aliases associations do: [:each | aBlock value: each ]