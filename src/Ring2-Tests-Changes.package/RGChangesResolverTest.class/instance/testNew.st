tests
testNew

	self assert: resolver changesToIDs isEmpty.
	self assert: resolver idsToOrigins isEmpty.
	self assert: resolver originsToIDs isEmpty.
	
	