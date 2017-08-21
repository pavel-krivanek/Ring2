tests
testNewLayouts

	RG2LayoutDefinition allSubclasses do: [ :layoutClass |
		| layout | 
		layout  := layoutClass unnamed.
		self assert: (layout isRing2Resolved).
		self assert: (layout hasUnresolved: #name).
		self assert: (layout isLayout).
		self assert: (layout allSlots isEmpty).
		self assert: (layout instVarNames isEmpty). ]