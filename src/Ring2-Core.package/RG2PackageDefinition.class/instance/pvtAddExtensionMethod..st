private - backend interface
pvtAddExtensionMethod: aMethodDefinition

	self environment verifyOwnership: aMethodDefinition.
	
	extensionMethods isRing2Resolved ifFalse: [ 
		self pvtCleanExtensionMethods ].
	
	extensionMethods add: aMethodDefinition.
	
	"TODO:Announce"
	
	