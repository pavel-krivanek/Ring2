tests
compareTraitComposition: aTraitComposition with: anRGTraitComposition
	
	self assert: aTraitComposition transformations size equals: anRGTraitComposition transformations size.
	
	aTraitComposition transformations with: anRGTraitComposition transformations do: [ :real :model |
		self assert: real isTrait equals: model isTrait.
		self assert: real isTraitAlias equals: model isTraitAlias.
		self assert: real isTraitExclusion equals: model isTraitExclusion.
		real isTraitExclusion ifTrue: [ 
			self assert: real subject name equals: model subject name.
			real exclusions with: model exclusions do: [:realExclusion :modelExclusion |
				self assert: realExclusion equals: modelExclusion	]].
		real isTraitAlias ifTrue: [ 
			self assert: real subject name equals: model subject name.
			real aliases associations with: model aliases do: [:realAlias :modelAlias |
				self assert: realAlias equals: modelAlias ]].
	  ].
	