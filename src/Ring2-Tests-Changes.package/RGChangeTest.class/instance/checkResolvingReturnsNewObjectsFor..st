utility
checkResolvingReturnsNewObjectsFor: aChange

	"utility method to check that the resolver provides a different object than the original change was"

	| resolver resolvedChanges |
	
	resolver := RGChangesResolver for: aChange environment.
	resolvedChanges := resolver resolve: { aChange }.
	self deny: resolvedChanges first equals: aChange.	
	
	^ resolvedChanges