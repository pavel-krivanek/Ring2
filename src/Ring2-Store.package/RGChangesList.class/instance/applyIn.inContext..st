actions
applyIn: anEnvironment inContext: anRGChangesResolvingContext

	^ self changes collect: [ :each |
		each applyIn: anEnvironment inContext: anRGChangesResolvingContext ]
