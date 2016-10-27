as yet unclassified
classVariables: aCollectionOfSymbols

	self cleanClassVariables.
	aCollectionOfSymbols do: [ :classVarName |
		self addClassVariable: (RG2ClassVariableDefinition named: classVarName asSymbol parent: self).].