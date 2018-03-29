actions
resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: aBehaviorName

	| anRGBehavior |

	anRGBehavior := ((self environment == anRGEnvironment) and: [ self hasKnownBehavior ])
		ifTrue: [ behavior ]
		ifFalse: [ self correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext  ].
	
	anRGBehavior ifNotNil: [ 
		self originId: (resolvingContext ensureIdFor: anRGBehavior proposed: self originId).
		behavior := anRGBehavior. ].
	
	^ anRGBehavior