private - backend interface
pvtAddPackage: anRGPackageDefinition

	self environment verifyOwnership: anRGPackageDefinition.
	
	packages isRing2Resolved ifFalse: [ 
		self pvtCleanPackages ].
	
	packages add: anRGPackageDefinition.	
		