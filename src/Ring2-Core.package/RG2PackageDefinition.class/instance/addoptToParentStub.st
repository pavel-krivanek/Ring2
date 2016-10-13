as yet unclassified
addoptToParentStub

	self isRing2Resolved ifFalse: [ ^ self ].
	
	super addoptToParentStub.

	^ self parent addPackage: self.