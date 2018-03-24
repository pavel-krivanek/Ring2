tests
checkIncompatible: aBlock

	self should: aBlock raise: RGIncompatibleBehaviorTypeError
