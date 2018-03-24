accessing
pvtPackage: anRGPackageDefinition

	self environment verifyOwnership: anRGPackageDefinition.

	^ package := anRGPackageDefinition