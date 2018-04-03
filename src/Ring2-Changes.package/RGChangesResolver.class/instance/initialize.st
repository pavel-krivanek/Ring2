initialization
initialize

	super initialize.
	
	originsToIDs := IdentityDictionary new.
	idsToOrigins := IdentityDictionary new.
	changesToIDs := IdentityDictionary new.
	lastKnownPaths := IdentityDictionary new.
	
	lastID := 0.
	