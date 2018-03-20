default model values
makeResolved

	
	"try to set the correct name before resolving of it"
	((self owner hasUnresolved: #name) and: [ self owner metaclass isRing2Resolved and: [ self metaclass hasResolved: #name ] ]) ifTrue: [ 
		self owner pvtName: (self metaclass name withoutSuffix: ' class') asSymbol.
		 ].
	
	super makeResolved.
	
	comment := self comment.
	classVariables := self classVariables.
	package := self package.
	sharedPools := self sharedPools.
