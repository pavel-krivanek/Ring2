accessing - backend
removePackage: aRG2Package

	self backend forPackage removePackage: aRG2Package from: self.
	
	self announce: (RPackageUnregistered to: aRG2Package).
