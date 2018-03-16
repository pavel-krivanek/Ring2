private - backend interface
pvtRemoveExtensionMethod: aRG2Method

	self environment verifyOwnership: aRG2Method.
	
	extensionMethods remove: aRG2Method.
	
	"TODO:Announce"
	
	