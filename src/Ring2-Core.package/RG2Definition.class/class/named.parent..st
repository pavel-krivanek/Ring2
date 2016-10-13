instance creation
named: aName parent: aRG2Definition

	^self basicNew
		parent: aRG2Definition;
		initialize;
		pvtName: aName asSymbol;
		yourself