private - backend interface
pvtRemoveExtensionMethod: aRG2MethodDefinition

	self environment verifyOwnership: aRG2MethodDefinition.
	
	extensionMethods remove: aRG2MethodDefinition.
	
	"TODO:Announce"
	
	