as yet unclassified
resolvedAsStandalone

	| resolver |
	
	resolver := RGChangesResolver for: self environment.
	^ (resolver resolve: { self }) first.
