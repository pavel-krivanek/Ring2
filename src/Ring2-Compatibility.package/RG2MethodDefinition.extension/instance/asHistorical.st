*Ring2-Compatibility
asHistorical

	| aMethod |
	
	aMethod := self copy makeResolved.
	aMethod environment backend: RG2EnvironmentBackend new. 
	^ aMethod. 