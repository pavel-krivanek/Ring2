initialization
hasFullyResolvedOrigins

	^ self changes allSatisfy: [ :each | each hasResolvedOriginName ]	

	