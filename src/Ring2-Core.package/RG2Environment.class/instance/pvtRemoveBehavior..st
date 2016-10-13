private - backend interface
pvtRemoveBehavior: aRG2BehaviorDefinition

	self verifyOwnership: aRG2BehaviorDefinition.
	
	behaviors remove: aRG2BehaviorDefinition.
	
	"TODO:Announce"
	
	