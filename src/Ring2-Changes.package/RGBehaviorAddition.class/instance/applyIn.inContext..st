actions
applyIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior newBehavior |

	anRGBehavior := self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment.
	
	anRGBehavior ifNotNil: [ 
		"the behavior already exists in the environment"
		^ self ].
	
	newBehavior := RGBehavior parent: anRGEnvironment behaviorStrategy: self newStrategy.
	anRGEnvironment addBehavior: newBehavior.
		
	"we need to register the new class to the resolving context to allow the next changes
	related to this class to be performed"
	resolvingContext ensureIdFor: newBehavior proposed: self originId.
	
	^ newBehavior

