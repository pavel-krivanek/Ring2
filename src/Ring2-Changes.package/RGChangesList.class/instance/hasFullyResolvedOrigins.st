initialization
hasFullyResolvedOrigins

	^ self changes allSatisfy: [ :each | each hasResolvedOrigin ]	

	