actions
applyIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior newBehavior |

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
		"the behavior already exists in the environment"
		^ self ].
	
	behaviorName ifNil: [ 
		RGNotFoundError signal: 'Unknonw name of the behavior that should be created' ].
	
	newBehavior := RGBehavior named: behaviorName parent: anRGEnvironment behaviorStrategy: self newStrategy.
	anRGEnvironment addBehavior: newBehavior
		
	
