*Calypso-Ring2
inheritsFrom: aClass

	| aSuperclass |
	aSuperclass := self superclass.
	aSuperclass ifNil: [ ^ false ].
	[aSuperclass isRootInEnvironment ]
		whileFalse: 
			[aSuperclass == aClass ifTrue: [^true].
			aSuperclass := aSuperclass superclass].
	^false