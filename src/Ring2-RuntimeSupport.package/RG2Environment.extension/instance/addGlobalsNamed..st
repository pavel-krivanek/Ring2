*Ring2-RuntimeSupport
addGlobalsNamed: anArrayOfSymbols

	anArrayOfSymbols do: [ :each |
		self addGlobalVariable: (RG2GlobalVariable named: each parent: self)].