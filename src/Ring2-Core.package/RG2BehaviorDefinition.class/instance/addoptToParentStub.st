as yet unclassified
addoptToParentStub

	| aPackage |
	
	self isRing2Resolved ifFalse: [ ^ self ].

	super addoptToParentStub.

	self parent pvtAddBehavior: self.
	

