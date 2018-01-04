resolving
resolveName

	"try to set the correct name if sibling has already a name"
	
	( self sibling isRing2Resolved and: [ self sibling hasResolved: #name ] ) ifTrue: [ 
		self setNameFromSiblingIfNeeded ].
