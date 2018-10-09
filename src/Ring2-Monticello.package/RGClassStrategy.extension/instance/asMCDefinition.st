*Ring2-Monticello
asMCDefinition

	^ MCClassDefinition 
		name: self owner name
		superclassName: (self owner superclass ifNil: [ 'nil' ] ifNotNil: [ :aSuperclass | aSuperclass name ])
		traitComposition: self owner traitCompositionString 
		classTraitComposition: self owner metaclass traitCompositionString
		category: self owner category 
		instVarNames: self instVarNames
		classVarNames: self owner classVarNames
		poolDictionaryNames: self owner sharedPoolNames
		classInstVarNames: self owner metaclass instVarNames
		type: self mcType
		comment: self owner comment content
		commentStamp: self owner comment stamp