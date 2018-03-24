tests
layoutClassesMapping

	^ Dictionary newFrom: { 
		CompiledMethodLayout -> RGCompiledMethodLayout. 
		ByteLayout -> RGByteLayout. 
		ImmediateLayout -> RGImmediateLayout. 
		WordLayout -> RGWordLayout. 
		WeakLayout -> RGWeakLayout.
		VariableLayout -> RGVariableLayout.
		EphemeronLayout -> RGEphemeronLayout.
		FixedLayout -> RGFixedLayout.
	}