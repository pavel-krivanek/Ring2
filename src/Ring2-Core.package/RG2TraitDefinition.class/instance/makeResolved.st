resolving
makeResolved

	
	"try to set the correct name before resolving of it"
	((self hasUnresolved: #name) and: [ self classTrait isRing2Resolved and: [ self classTrait hasResolved: #name ] ]) ifTrue: [ 
		name := (self classTrait withoutSuffix: ' classTrait') asSymbol.
		 ].
	
	super makeResolved.
	classTrait := self classTrait.
	comment := self comment.
	package := self package.
	