tests
testNew

	"the internal directories should be empty by default"

	self assert: resolver changesToIDs isEmpty.
	self assert: resolver idsToOrigins isEmpty.
	self assert: resolver originsToIDs isEmpty.
	
	