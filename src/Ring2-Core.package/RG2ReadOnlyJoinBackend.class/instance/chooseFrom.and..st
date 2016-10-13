as yet unclassified
chooseFrom: aRG2Definition1 and: aRG2Definition2

	| firstResolved |
	
	"(aRG2Definition1 canMergeSimplyWithoutName: aRG2Definition2)
		ifFalse: [ RG2JoiningError signal]."

	(aRG2Definition1 canMergeWith:	aRG2Definition2)	
		ifFalse: [ RG2JoiningError signal].
	"
	(aRG2Definition1 canBeJoined not and: [ aRG2Definition2 canBeJoined not ])
		ifTrue: [ RG2JoiningError signal ].
	"
	firstResolved := aRG2Definition1 isRing2Resolved.
		
	^ firstResolved 
		ifTrue: [ aRG2Definition1 ]
		ifFalse: [ aRG2Definition2 ].