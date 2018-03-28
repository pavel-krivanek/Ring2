actions
resolvedBehaviorFrom: resolvingContext in: anRGEnvironment

	| anRGBehavior |

	anRGBehavior := (self environment == anRGEnvironment)
		ifTrue: [ 
			self hasKnownBehavior 
				ifTrue: [ behavior ]
				ifFalse: [
					 self originId 
						ifNotNil: [ resolvingContext originFor: self originId ]
						ifNil: [ RGResolvingError signal ] ] ]
		ifFalse: [ 
			self hasResolvedOriginName 
				ifTrue: [ anRGEnvironment ask behaviorNamed: behaviorName ] ]. 
	
	anRGBehavior ifNotNil: [ 
		resolvingContext ensureIdFor: anRGBehavior.
		behavior := anRGBehavior. ].
	
	^ anRGBehavior