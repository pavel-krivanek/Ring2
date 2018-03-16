private - backend interface
pvtRemoveDefinedBehavior: aRG2Behavior

	self environment verifyOwnership: aRG2Behavior.
	
	definedBehaviors remove: aRG2Behavior.
	
	"TODO:Announce"
	
	