instance creation
newClass

	| aClass aRG2BehaviorStrategy |
	
	aRG2BehaviorStrategy := RG2ClassStrategy basicNew.
	aClass := self basicNew
		behaviorStrategy: aRG2BehaviorStrategy;
		initialize.
	aRG2BehaviorStrategy initialize.
	^ aClass