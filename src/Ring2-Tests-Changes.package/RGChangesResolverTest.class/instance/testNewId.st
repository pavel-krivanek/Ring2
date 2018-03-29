tests
testNewId

	self assert: resolver newID equals: resolver lastID.
	self deny: resolver lastID equals: resolver newID.
	self deny: resolver newID equals: resolver newID.
