resolving
makeResolved

	"try to set the correct name before resolving of it"
	((self hasUnresolved: #name) and: [ self baseClass isRing2Resolved and: [ self baseClass hasResolved: #name ] ]) ifTrue: [ 
		self name: (self baseClass name, ' class') asSymbol.
		 ].
	
	super makeResolved.
	
	baseClass := self baseClass.