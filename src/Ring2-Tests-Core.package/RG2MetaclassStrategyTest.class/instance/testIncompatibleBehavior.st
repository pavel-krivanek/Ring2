tests
testIncompatibleBehavior

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newMetaclass.
	
	self should: [ aRG2Behavior addClassVariable: nil ] raise: RG2IncompatibleBehaviorTypeError.