private - backend interface
pvtRemovePackage: aRG2Package

	self verifyOwnership: aRG2Package.
	
	packages remove: aRG2Package.
	
	"TODO:Announce"
	
	