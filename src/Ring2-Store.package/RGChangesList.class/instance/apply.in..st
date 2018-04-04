actions
apply: resolvedChanges in: anRGEnvironment

	| resolvingContext |
	
	resolvingContext := RGChangesResolvingContext forChanges: self changes.

	resolvedChanges do: [ :each | each applyIn: anRGEnvironment inContext: resolvingContext ]