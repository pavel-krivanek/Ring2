instance creation
unresolvedNamed: aString withParent: aRGDefintion

	^self basicNew
		initializeUnresolved; 
		pvtName: aString asSymbol;
		parent: aRGDefintion;
		yourself