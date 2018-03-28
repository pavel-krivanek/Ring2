actions
applyIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior newBehavior |

	anRGBehavior := self resolvedBehaviorFrom: resolvingContext in: anRGEnvironment.
	
	anRGBehavior ifNotNil: [ 
		"the behavior already exists in the environment"
		^ self ].
	
	behaviorName ifNil: [ 
		RGNotFoundError signal: 'Unknonw name of the behavior that should be created' ].
	
	newBehavior := RGBehavior named: behaviorName parent: anRGEnvironment behaviorStrategy: self newStrategy.
	anRGEnvironment addBehavior: newBehavior
		
	
