actions
revertIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior |

	anRGBehavior := self resolvedBehaviorFrom: resolvingContext in: anRGEnvironment.

	anRGEnvironment removeBehavior: anRGBehavior.
	
	^ anRGBehavior