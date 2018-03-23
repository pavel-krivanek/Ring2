as yet unclassified
nameOrNil

	"...if name is unresolved"
		
	(self hasResolvedName) ifFalse: [ ^ nil ].

	^ self name
