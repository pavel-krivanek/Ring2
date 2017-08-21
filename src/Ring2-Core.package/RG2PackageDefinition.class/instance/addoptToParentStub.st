managing container
addoptToParentStub

	self isRing2Resolved ifFalse: [ ^ self ].
	
	super addoptToParentStub.

	^ self parent addPackage: self.