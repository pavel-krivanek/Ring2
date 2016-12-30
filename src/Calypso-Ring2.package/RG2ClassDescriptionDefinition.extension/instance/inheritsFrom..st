*Calypso-Ring2
inheritsFrom: aClass

	| aSuperclass |
	aSuperclass := self superclass.
	[aSuperclass isRootInEnvironment ]
		whileFalse: 
			[aSuperclass == aClass ifTrue: [^true].
			aSuperclass := aSuperclass superclass].
	^false