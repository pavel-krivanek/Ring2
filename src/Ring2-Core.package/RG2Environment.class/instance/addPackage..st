accessing - backend
addPackage: aRG2Package

	self backend forPackage addPackage: aRG2Package to: self.
	
	self announce: (RPackageRegistered to: aRG2Package).
