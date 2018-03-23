utility
verifyOwnership: aRG2Definition

	"ignore unresolved values. TODO: check default values ownership?"
	aRG2Definition isRing2Resolved ifFalse: [ ^ self.].

	(aRG2Definition environment = self)
		ifFalse: [ RG2WrongEnvironment signal ].