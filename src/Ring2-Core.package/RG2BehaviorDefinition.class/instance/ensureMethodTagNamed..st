as yet unclassified
ensureMethodTagNamed: aSymbol

	^ self tagsForMethods detect: [ :each | each name = aSymbol ] ifNone: [ 
		self addMethodTag: aSymbol.
		aSymbol ]