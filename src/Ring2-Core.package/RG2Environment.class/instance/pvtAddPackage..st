private - backend interface
pvtAddPackage: aRG2Package

	self environment verifyOwnership: aRG2Package.
	
	packages isRing2Resolved ifFalse: [ 
		self pvtCleanPackages ].
	
	packages add: aRG2Package.	
		