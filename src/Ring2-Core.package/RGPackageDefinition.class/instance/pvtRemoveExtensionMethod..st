private - backend interface
pvtRemoveExtensionMethod: aRGMethod

	self environment verifyOwnership: aRGMethod.
	
	extensionMethods remove: aRGMethod.
	
	"TODO:Announce"
	
	