utility
verifyOwnership: anRGObject

	"ignore unresolved values. TODO: check default values ownership?"
	anRGObject isRing2Resolved ifFalse: [ ^ self.].

	(anRGObject environment = self)
		ifFalse: [ RGWrongEnvironment signal ].