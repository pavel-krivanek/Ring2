running
testNewId

	self assert: resolvingContext newId equals: resolvingContext lastId.
	self deny: resolvingContext lastId equals: resolvingContext newId.
	self deny: resolvingContext newId equals: resolvingContext newId.
	self assert: resolvingContext lastId < resolvingContext newId.
