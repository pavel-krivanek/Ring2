tests
testIsEmptyLayout

	| layout layoutClass | 
		
	layoutClass := 	RG2EmptyLayoutDefinition.
	layout  := layoutClass unnamed.
	self assert: (layout isEmptyLayout).
	(RG2LayoutDefinition allSubclasses copyWithout: layoutClass) do: [ :each |
		self deny: (each unnamed isEmptyLayout) ]
	