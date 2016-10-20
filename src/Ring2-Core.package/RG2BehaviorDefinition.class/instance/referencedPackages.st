as yet unclassified
referencedPackages

	| referenced |
	referenced := IdentitySet new.
	referenced add: self package.
	self localMethodsDo: [ :each |
		referenced add: each package]. 
	
	^ referenced