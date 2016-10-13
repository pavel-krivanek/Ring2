accessing
newEnvironment

	| env | 
	
	env := RG2Environment unnamed.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	^ env