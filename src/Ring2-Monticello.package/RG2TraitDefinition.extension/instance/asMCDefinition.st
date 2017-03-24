*Ring2-Monticello
asMCDefinition self halt.

	^ MCTraitDefinition 
		name: self name
		traitComposition: self traitCompositionString 
		category: self category 
		comment: self comment content
		commentStamp: ''