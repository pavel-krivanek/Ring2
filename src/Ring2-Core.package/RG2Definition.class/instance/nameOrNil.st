as yet unclassified
nameOrNil

	"...if name is unresolved"
		
	(self hasResolved: #name) ifFalse: [ ^ nil ].

	^ self name
