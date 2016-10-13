*Ring2-Monticello
ring2LayoutType

	^ (Dictionary newFrom: {	
		#compiledMethod -> RG2CompiledMethodLayoutDefinition. 
		#bytes -> RG2ByteLayoutDefinition. 
		#immediate -> RG2ImmediateLayoutDefinition. 
		#words -> RG2WordLayoutDefinition. 
		#week -> RG2WeakLayoutDefinition.
		#variable -> RG2VariableLayoutDefinition.
		#ephemeron -> RG2EphemeronLayoutDefinition.
		#normal -> RG2FixedLayoutDefinition.
		#weak -> RG2WeakLayoutDefinition.
	}) at: type.		
