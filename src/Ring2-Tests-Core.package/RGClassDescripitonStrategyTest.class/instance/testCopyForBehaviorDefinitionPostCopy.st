tests
testCopyForBehaviorDefinitionPostCopy

	| aRGBehavior copy |
	
	aRGBehavior := RGBehavior newClass.
	copy := aRGBehavior copyForBehaviorDefinition.
	self deny: aRGBehavior behaviorStrategy == copy behaviorStrategy.	
	self deny: (aRGBehavior behaviorStrategy instVarNamed: #layout) == (copy behaviorStrategy instVarNamed: #layout).
"TODO: check this failing case:"
"	self deny: aRGBehavior behaviorStrategy layout == copy behaviorStrategy layout."