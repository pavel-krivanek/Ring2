actions
applyIn: anRGEnvironment inContext: resolvingContext

	| newBehavior |

	newBehavior := super applyIn: anRGEnvironment inContext: resolvingContext.
	
	newBehavior name: self behaviorName.
	
	^ newBehavior 
	
