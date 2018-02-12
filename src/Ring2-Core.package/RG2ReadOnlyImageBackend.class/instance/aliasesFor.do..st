trait alias
aliasesFor: aRG2TraitAliasDefinition do: aBlock

	^ (aRG2TraitAliasDefinition propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) aliases associations do: [:each | aBlock value: each ]