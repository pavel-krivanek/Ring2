Extension { #name : #RG2TraitCompositionDefinition }

{ #category : #'*Calypso-Ring2' }
RG2TraitCompositionDefinition >> allTraits [

	^self traits flatCollect: [:trait |
		trait hasTraitComposition
			ifTrue: [trait traitComposition allTraits copyWith: trait]
			ifFalse: [Array with: trait]]
]
