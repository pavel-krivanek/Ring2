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
						ifFalse: [ nil ] ] ]
		ifFalse: [ 
			self hasOriginId 
				ifTrue: [ resolvingContext originFor: self originId ifAbsent: [ 
					self hasResolvedOriginName 	
						ifTrue: [ anRGEnvironment ask behaviorNamed: aBehaviorName ]
						ifFalse: [ nil ] ] ]
				ifFalse: [ 
					self hasResolvedOriginName 
						ifTrue: [ anRGEnvironment ask behaviorNamed: aBehaviorName ]
						ifFalse: [ nil ] ] ]. 
	
	anRGBehavior ifNotNil: [ 
		resolvingContext ensureIdFor: anRGBehavior.
		behavior := anRGBehavior. ].
	
	^ anRGBehavior