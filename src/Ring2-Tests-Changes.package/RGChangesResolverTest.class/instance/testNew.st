tests
testNew

	| resolver env |
	
	env := RGEnvironment new.
	resolver := RGChangesResolver for: env.
	
	self assert: resolver changesToIDs isEmpty.
	self assert: resolver idsToOrigins isEmpty.
	self assert: resolver originsToIDs isEmpty.
	
	