*Calypso-Ring2
hasSelector: aSelector 
	"Answers true if the method refers to the selector"
	(self selector = aSelector) ifTrue: [ ^ true ].
	^ self sendsSelector: aSelector 