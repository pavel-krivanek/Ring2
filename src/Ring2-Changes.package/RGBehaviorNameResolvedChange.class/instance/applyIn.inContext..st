actions
applyIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior |

	anRGBehavior := self resolvedBehaviorFrom: resolvingContext in: anRGEnvironment.
	anRGBehavior ifNil: [  RGResolvingError signal ].
	
	anRGBehavior name: newName.
