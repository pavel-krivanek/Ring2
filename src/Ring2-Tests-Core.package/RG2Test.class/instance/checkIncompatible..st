tests
checkIncompatible: aBlock

	self should: aBlock raise: RG2IncompatibleBehaviorTypeError
