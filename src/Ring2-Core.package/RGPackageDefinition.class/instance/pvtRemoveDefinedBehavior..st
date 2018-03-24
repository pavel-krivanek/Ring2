private - backend interface
pvtRemoveDefinedBehavior: aRGBehavior

	self environment verifyOwnership: aRGBehavior.
	
	definedBehaviors remove: aRGBehavior.
	
	"TODO:Announce"
	
	