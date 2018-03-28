actions
reverseIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior |

	anRGBehavior := self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment.

	anRGEnvironment removeBehavior: anRGBehavior.
	
	^ anRGBehavior