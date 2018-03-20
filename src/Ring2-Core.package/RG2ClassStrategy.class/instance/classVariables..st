private - backend access
classVariables: aCollectionOfSymbols

	self cleanClassVariables.
	aCollectionOfSymbols do: [ :classVarName |
		self addClassVariable: (RG2ClassVariable named: classVarName asSymbol parent: self).].