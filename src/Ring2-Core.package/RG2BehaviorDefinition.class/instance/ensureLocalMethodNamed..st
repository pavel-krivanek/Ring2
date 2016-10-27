queries - methods
ensureLocalMethodNamed: aSymbol

	^ self localMethodNamed: aSymbol ifAbsent: [ 
		| newMethod |
		newMethod := RG2MethodDefinition named: aSymbol asSymbol parent: self.
		self addLocalMethod: newMethod.
		newMethod].