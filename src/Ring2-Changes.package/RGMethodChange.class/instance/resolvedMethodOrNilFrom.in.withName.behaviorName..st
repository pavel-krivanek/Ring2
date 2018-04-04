as yet unclassified
resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment withName: aMethodName behaviorName: aBehaviorName
	| anRGMethod |

	anRGMethod := ((self environment == anRGEnvironment) and: [ self hasKnownMethod ])
		ifTrue: [ method ]
		ifFalse: [ self
			correspondingMethodFrom: anRGEnvironment
			named: aMethodName
			in: aBehaviorName
			using: resolvingContext ].
	anRGMethod
		ifNotNil: [ self
			originId: (resolvingContext ensureIdFor: anRGMethod proposed: self originId).
			method := anRGMethod ].
	^ anRGMethod