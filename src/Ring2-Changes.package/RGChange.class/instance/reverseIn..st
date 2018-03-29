actions
reverseIn: anRGEnvironment

	| resolver resolvedChanges resolvingContext |
	
	resolver := RGChangesResolver for: self environment.
	resolvedChanges := resolver resolve: self changes.
	resolvingContext := RGChangesResolvingContext forChanges: resolvedChanges.

	^ resolvedChanges first reverseIn: anRGEnvironment inContext: resolvingContext.
	"reverseIn: anRGEnvironment

	| resolvingContext |
	
	resolvingContext := RGChangesResolvingContext forChanges: { self }.

	^ self reverseIn: anRGEnvironment inContext: resolvingContext."