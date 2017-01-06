as yet unclassified
bindingOf: aSymbol
	
	self ask globalVariables detect: [ :each | each name = aSymbol  ] ifFound: [ :found | ^ found ].

	^ self ask behaviorNamed: aSymbol