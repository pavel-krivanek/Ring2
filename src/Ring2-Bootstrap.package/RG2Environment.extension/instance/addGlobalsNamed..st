*Ring2-Bootstrap
addGlobalsNamed: anArrayOfSymbols

	anArrayOfSymbols do: [ :each |
		self addGlobalVariable: (RG2GlobalVariableDefinition named: each parent: self)].