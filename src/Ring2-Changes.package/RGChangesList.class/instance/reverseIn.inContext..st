actions
reverseIn: anEnvironment inContext: anRGChangesResolvingContext

	^ self changes reversed collect: [ :each |
		each reverseIn: anEnvironment inContext: anRGChangesResolvingContext ]
