tests
layoutClassesMapping

	^ Dictionary newFrom: { 
		CompiledMethodLayout -> RG2CompiledMethodLayoutDefinition. 
		ByteLayout -> RG2ByteLayoutDefinition. 
		ImmediateLayout -> RG2ImmediateLayoutDefinition. 
		WordLayout -> RG2WordLayoutDefinition. 
		WeakLayout -> RG2WeakLayoutDefinition.
		VariableLayout -> RG2VariableLayoutDefinition.
		EphemeronLayout -> RG2EphemeronLayoutDefinition.
		FixedLayout -> RG2FixedLayoutDefinition.
	}