as yet unclassified
addoptToParentStub

	super addoptToParentStub.
	self environment backend createUnresolvedClassGroupFor: self parent.
	self parent addClassVariable: self.