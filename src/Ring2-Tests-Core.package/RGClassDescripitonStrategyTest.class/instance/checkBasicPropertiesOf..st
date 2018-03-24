tests
checkBasicPropertiesOf: aRGBehavior

	self assert: aRGBehavior isBehavior.	
	self assert: aRGBehavior behaviorStrategy isClassStrategy.
	self assert: aRGBehavior behaviorStrategy owner equals: aRGBehavior.
	self assert: aRGBehavior layout isRing2Resolved not.
	self assert: aRGBehavior layout isFixedLayout.

	