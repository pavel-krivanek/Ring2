actions
reverse: resolvedChanges in: anRGEnvironment

	| resolvingContext |
	
	resolvingContext := RGChangesResolvingContext forChanges: self changes.

	resolvedChanges reverseDo: [ :each | 
		each reverseIn: anRGEnvironment inContext: resolvingContext ]