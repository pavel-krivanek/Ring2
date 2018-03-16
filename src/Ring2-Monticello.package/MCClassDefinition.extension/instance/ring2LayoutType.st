*Ring2-Monticello
ring2LayoutType

	^ (Dictionary newFrom: {	
		#compiledMethod -> RG2CompiledMethodLayout. 
		#bytes -> RG2ByteLayout. 
		#immediate -> RG2ImmediateLayout. 
		#words -> RG2WordLayout. 
		#week -> RG2WeakLayout.
		#variable -> RG2VariableLayout.
		#ephemeron -> RG2EphemeronLayout.
		#normal -> RG2FixedLayout.
		#weak -> RG2WeakLayout.
	}) at: type.		
