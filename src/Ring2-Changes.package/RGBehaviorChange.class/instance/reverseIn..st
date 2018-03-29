actions
reverseIn: anRGEnvironment

	| resolvingContext |
	
	resolvingContext := RGChangesResolvingContext forChanges: { self }.

	^ self reverseIn: anRGEnvironment inContext: resolvingContext.