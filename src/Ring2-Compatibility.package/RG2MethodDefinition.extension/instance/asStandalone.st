*Ring2-Compatibility
asStandalone

	| aMethod |
	
	aMethod := self copy makeResolved.
	aMethod environment backend: RG2EnvironmentBackend new. 
	^ aMethod. 