tests
testCopyForBehaviorDefinitionPostCopy

	| aRG2Behavior copy |
	
	aRG2Behavior := RG2Behavior newClass.
	copy := aRG2Behavior copyForBehaviorDefinition.
	self deny: aRG2Behavior behaviorStrategy == copy behaviorStrategy.	
	self deny: (aRG2Behavior behaviorStrategy instVarNamed: #layout) == (copy behaviorStrategy instVarNamed: #layout).
"TODO: check this failing case:"
"	self deny: aRG2Behavior behaviorStrategy layout == copy behaviorStrategy layout."