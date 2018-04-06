actions
revertIn: anEnvironment inContext: anRGChangesResolvingContext

	^ self changes reversed collect: [ :each |
		each revertIn: anEnvironment inContext: anRGChangesResolvingContext ]
