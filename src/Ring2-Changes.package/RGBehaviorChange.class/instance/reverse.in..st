actions
reverse: resolvedChangeOrChanges in: anRGEnvironment

	| changesCollection resolvingContext |
	
	"ensure we always work with a collection"
	changesCollection := resolvedChangeOrChanges asOrderedCollection.
	
	resolvingContext := RGChangesResolvingContext forChanges: changesCollection.

	changesCollection reverseDo: [ :each | 
		each reverseIn: anRGEnvironment inContext: resolvingContext ]