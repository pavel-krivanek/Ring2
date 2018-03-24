as yet unclassified
chooseFrom: anRGObject1 and: anRGObject2

	| firstResolved |
	
	"(anRGObject1 canMergeSimplyWithoutName: anRGObject2)
		ifFalse: [ RG2JoiningError signal]."

	(anRGObject1 canMergeWith:	anRGObject2 visited: IdentitySet new)	
		ifFalse: [ RG2JoiningError signal].
	"
	(anRGObject1 canBeJoined not and: [ anRGObject2 canBeJoined not ])
		ifTrue: [ RG2JoiningError signal ].
	"
	firstResolved := anRGObject1 isRing2Resolved.
		
	^ firstResolved 
		ifTrue: [ anRGObject1 ]
		ifFalse: [ anRGObject2 ].