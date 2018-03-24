private - backend interface
pvtAddDefinedBehavior: aRGBehavior

	self environment verifyOwnership: aRGBehavior.
	
	definedBehaviors isRing2Resolved ifFalse: [ 
		self pvtCleanDefinedBehaviors  ].
	
	definedBehaviors add: aRGBehavior.	
	