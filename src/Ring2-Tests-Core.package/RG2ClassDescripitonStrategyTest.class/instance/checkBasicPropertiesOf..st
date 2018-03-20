tests
checkBasicPropertiesOf: aRG2Behavior

	self assert: aRG2Behavior isBehavior.	
	self assert: aRG2Behavior behaviorStrategy isClassStrategy.
	self assert: aRG2Behavior behaviorStrategy owner equals: aRG2Behavior.
	self assert: aRG2Behavior layout isRing2Resolved not.
	self assert: aRG2Behavior layout isFixedLayout.

	