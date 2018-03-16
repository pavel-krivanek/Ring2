tests
testIsEphemeronLayout

	self assert: (RG2EphemeronLayout unnamed isEphemeronLayout).
	self deny: (RG2FixedLayout unnamed isEphemeronLayout).
	