as yet unclassified
classVariables: aCollectionOfSymbols

	aCollectionOfSymbols do: [ :classVarName |
		self addClassVariable: (RG2ClassVariableDefinition named: classVarName asSymbol parent: self).].