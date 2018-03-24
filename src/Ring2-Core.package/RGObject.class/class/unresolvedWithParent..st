instance creation
unresolvedWithParent: aRGDefintion

	^self basicNew
		initializeUnresolved; 
		parent: aRGDefintion;
		yourself