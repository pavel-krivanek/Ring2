tests
testNewLayouts

	RG2LayoutDefinition allSubclasses do: [ :layoutClass |
		| layout | 
		layout  := layoutClass unnamed.
		self assert: (layout isRing2Resolved).
		self assert: (layout unresolvedProperties includesAll: #(name)).
		self assert: (layout isLayout).
		
		 ]