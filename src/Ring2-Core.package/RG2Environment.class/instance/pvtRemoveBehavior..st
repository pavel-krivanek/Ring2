private - backend interface
pvtRemoveBehavior: aRG2Behavior

	self verifyOwnership: aRG2Behavior.
	
	behaviors remove: aRG2Behavior.
	
	"TODO:Announce"
	
	