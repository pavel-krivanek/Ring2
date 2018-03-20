private - backend access
makeResolved

	
	"try to set the correct name before resolving of it"
	((self hasUnresolved: #name) and: [ self baseClass isRing2Resolved and: [ self baseTrait hasResolved: #name ] ]) ifTrue: [ 
		self name: (self baseTrait name, ' classTrait') asSymbol.
		 ].

	super makeResolved.
	
	baseTrait := self baseTrait.