tests
layoutClassesMapping

	^ Dictionary newFrom: { 
		CompiledMethodLayout -> RG2CompiledMethodLayout. 
		ByteLayout -> RG2ByteLayout. 
		ImmediateLayout -> RG2ImmediateLayout. 
		WordLayout -> RG2WordLayout. 
		WeakLayout -> RG2WeakLayout.
		VariableLayout -> RG2VariableLayout.
		EphemeronLayout -> RG2EphemeronLayout.
		FixedLayout -> RG2FixedLayout.
	}