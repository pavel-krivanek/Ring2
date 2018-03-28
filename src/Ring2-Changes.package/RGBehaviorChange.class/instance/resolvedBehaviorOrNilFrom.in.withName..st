actions
resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: aBehaviorName

	| anRGBehavior |

	anRGBehavior := (self environment == anRGEnvironment)
		ifTrue: [ 
			self hasKnownBehavior 
				ifTrue: [ behavior ]
				ifFalse: [
					 self hasOriginId 
						ifTrue: [ resolvingContext originFor: self originId ]
						ifFalse: [ RGResolvingError signal ] ] ]
		ifFalse: [ 
			self hasOriginId 
				ifTrue: [ resolvingContext originFor: self originId ifAbsent: [ 
					self hasResolvedOriginName 	
						ifTrue: [ anRGEnvironment ask behaviorNamed: aBehaviorName ]
						ifFalse: [ RGResolvingError signal ] ] ]
				ifFalse: [ 
					self hasResolvedOriginName 
						ifTrue: [ anRGEnvironment ask behaviorNamed: aBehaviorName ]
						ifFalse: [RGResolvingError signal ] ] ]. 
	
	anRGBehavior ifNotNil: [ 
		resolvingContext ensureIdFor: anRGBehavior.
		behavior := anRGBehavior. ].
	
	^ anRGBehavior