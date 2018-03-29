running
testFindFirstNewId

	resolvingContext ensureIdFor: #a proposed: 1.
	resolvingContext ensureIdFor: #a proposed: 2.
	resolvingContext ensureIdFor: #a proposed: 3.
	resolvingContext ensureIdFor: #a proposed: 5.

	self assert: resolvingContext newId equals: 4.
	self assert: resolvingContext newId equals: 6.