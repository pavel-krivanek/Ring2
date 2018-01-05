*Ring2-Compatibility
asActive

	| aMethod |
	
	aMethod := self copy makeResolved.
	aMethod environment backend: RG2ReadOnlyImageBackend new. 
	^ aMethod. 