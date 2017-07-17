*Calypso-Ring2
metaLevelScope
	^self isInstanceSide ifTrue: [ ClyInstanceSideScope ] ifFalse: [ ClyClassSideScope ]