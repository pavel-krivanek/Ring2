utility
verifyOwnership: aRG2Definition

	"ignore unresolved values. TODO: check default values ownership?"
	aRG2Definition isRing2Resolved ifFalse: [ ^ self.].

	self assert: (aRG2Definition environment = self).