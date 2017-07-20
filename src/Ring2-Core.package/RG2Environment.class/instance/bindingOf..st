as yet unclassified
bindingOf: aSymbol
	
	| behavior |
	
	self ask globalVariables detect: [ :each | each name = aSymbol  ] ifFound: [ :found | ^ found ].

	behavior := self ask behaviorNamed: aSymbol.
	^ behavior ifNotNil: [ GlobalVariable key: aSymbol value: behavior].