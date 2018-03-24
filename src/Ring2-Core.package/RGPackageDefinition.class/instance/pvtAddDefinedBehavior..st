private - backend interface
pvtAddDefinedBehavior: aRG2Behavior

	self environment verifyOwnership: aRG2Behavior.
	
	definedBehaviors isRing2Resolved ifFalse: [ 
		self pvtCleanDefinedBehaviors  ].
	
	definedBehaviors add: aRG2Behavior.	
	