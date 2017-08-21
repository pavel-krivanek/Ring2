tests
testIsEphemeronLayout

	self assert: (RG2EphemeronLayoutDefinition unnamed isEphemeronLayout).
	self deny: (RG2FixedLayoutDefinition unnamed isEphemeronLayout).
	