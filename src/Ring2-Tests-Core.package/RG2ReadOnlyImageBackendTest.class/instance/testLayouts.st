tests
testLayouts

	| env layout |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	layout := (ByteString asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isByteLayout.

	layout := (WordArray asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isWordLayout.	

	layout := (CompiledMethod asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isCompiledMethodLayout.	

	layout := (CompiledMethod asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isCompiledMethodLayout.				
		
	layout := (SmallInteger asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isImmediateLayout.				
		
	layout := (Ephemeron asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isEphemeronLayout.				

	layout := (Object asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isFixedLayout.				

	layout := (Array asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isVariableLayout.				

	layout := (WeakArray asRing2MinimalDefinitionIn: env) layout.
	self assert: layout isLayout.
	self assert: layout isWeakLayout.				

			