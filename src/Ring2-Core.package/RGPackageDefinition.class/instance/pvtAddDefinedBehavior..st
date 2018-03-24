private - backend interface
pvtAddDefinedBehavior: anRGBehavior

	self environment verifyOwnership: anRGBehavior.
	
	definedBehaviors isRing2Resolved ifFalse: [ 
		self pvtCleanDefinedBehaviors  ].
	
	definedBehaviors add: anRGBehavior.	
	