as yet unclassified
compatibleWith: anRGObject

	(self class = anRGObject class)
		ifFalse: [ ^ false ].
		
	(self canMergeSimplyWith: anRGObject) ifTrue: [ ^ true ].
		
	^ (self name = anRGObject name)