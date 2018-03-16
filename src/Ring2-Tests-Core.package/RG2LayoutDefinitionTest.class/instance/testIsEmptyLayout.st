tests
testIsEmptyLayout

	| layout layoutClass | 
		
	layoutClass := 	RG2EmptyLayout.
	layout  := layoutClass unnamed.
	self assert: (layout isEmptyLayout).
	(RG2Layout allSubclasses copyWithout: layoutClass) do: [ :each |
		self deny: (each unnamed isEmptyLayout) ]
	