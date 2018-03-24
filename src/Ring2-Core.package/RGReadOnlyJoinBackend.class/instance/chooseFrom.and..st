as yet unclassified
chooseFrom: anRGObject1 and: anRGObject2

	| firstResolved |
	
	"(anRGObject1 canMergeSimplyWithoutName: anRGObject2)
		ifFalse: [ RGJoiningError signal]."

	(anRGObject1 canMergeWith:	anRGObject2 visited: IdentitySet new)	
		ifFalse: [ RGJoiningError signal].
	"
	(anRGObject1 canBeJoined not and: [ anRGObject2 canBeJoined not ])
		ifTrue: [ RGJoiningError signal ].
	"
	firstResolved := anRGObject1 isRing2Resolved.
		
	^ firstResolved 
		ifTrue: [ anRGObject1 ]
		ifFalse: [ anRGObject2 ].