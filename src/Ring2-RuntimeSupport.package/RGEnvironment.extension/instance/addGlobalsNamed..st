*Ring2-RuntimeSupport
addGlobalsNamed: anArrayOfSymbols

	anArrayOfSymbols do: [ :each |
		self addGlobalVariable: (RGGlobalVariable named: each parent: self)].