unpackaged 
unpackagedPackage

	| aProtocol |
	aProtocol := RG2PackageDefinition unresolvedWithParent: self.
	aProtocol pvtName: self unpackagedPackageName.
	
	^ aProtocol
