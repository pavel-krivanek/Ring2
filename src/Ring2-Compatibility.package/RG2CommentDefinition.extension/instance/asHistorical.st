*Ring2-Compatibility
asHistorical

	| aComment |
	
	aComment := self copy makeResolved.
	aComment environment backend: RG2EnvironmentBackend new. 
	^ aComment.