private - backend interface
pvtAddExtensionMethod: aMethodDefinition

	self environment verifyOwnership: aMethodDefinition.
	
	extensionMethods isRing2Resolved ifFalse: [ 
		self pvtCleanDefinedBehaviors  ].
	
	extensionMethods add: aMethodDefinition.
	
	"TODO:Announce"
	
	