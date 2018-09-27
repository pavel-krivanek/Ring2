managing container
addoptToParentStub

	self isRingResolved ifFalse: [ ^ self ].

	super addoptToParentStub.

	self parent pvtAddBehavior: self.
	

