actions
reverseIn: anRGEnvironment

	| resolver resolvedChanges resolvingContext |
	
	resolver := RGChangesResolver for: self environment.
	resolvedChanges := resolver resolve: self changes.
	
	resolvingContext := RGChangesResolvingContext forChanges: resolvedChanges.

	^ resolvedChanges reverseDo: [ :each | 
		each reverseIn: anRGEnvironment inContext: resolvingContext ]