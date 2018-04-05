initialization
initialize

	super initialize.
	
	originsToIDs := IdentityDictionary new.
	idsToOrigins := IdentityDictionary new.
	changesToIDs := IdentityDictionary new.
	lastKnownPaths := Dictionary new.
	
	lastID := 0.
	