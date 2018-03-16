unpackaged 
unpackagedPackage

	| aProtocol |
	aProtocol := RG2Package unresolvedWithParent: self.
	aProtocol pvtName: self unpackagedPackageName.
	
	^ aProtocol
