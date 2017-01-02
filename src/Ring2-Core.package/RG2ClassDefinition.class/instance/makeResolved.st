resolving
makeResolved

	
	"try to set the correct name before resolving of it"
	((self hasUnresolved: #name) and: [ self metaclass isRing2Resolved and: [ self metaclass hasResolved: #name ] ]) ifTrue: [ 
		name := (self classTrait withoutSuffix: ' class') asSymbol.
		 ].
	
	super makeResolved.
	
	comment := self comment.
	classVariables := self classVariables.
	package := self package.
	sharedPools := self sharedPools.
