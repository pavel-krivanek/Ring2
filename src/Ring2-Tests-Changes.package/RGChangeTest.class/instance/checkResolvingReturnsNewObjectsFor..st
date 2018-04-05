tests
checkResolvingReturnsNewObjectsFor: aChange

	| resolver resolvedChanges |
	
	resolver := RGChangesResolver for: aChange environment.
	resolvedChanges := resolver resolve: { aChange }.
	self deny: resolvedChanges first equals: aChange.	
	
	^ resolvedChanges