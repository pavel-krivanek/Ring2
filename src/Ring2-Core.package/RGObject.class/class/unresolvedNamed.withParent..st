instance creation
unresolvedNamed: aString withParent: aRG2Defintion

	^self basicNew
		initializeUnresolved; 
		pvtName: aString asSymbol;
		parent: aRG2Defintion;
		yourself