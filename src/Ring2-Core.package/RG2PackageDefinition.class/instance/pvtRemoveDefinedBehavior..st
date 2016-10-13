private - backend interface
pvtRemoveDefinedBehavior: aRG2BehaviorDefinition

	self environment verifyOwnership: aRG2BehaviorDefinition.
	
	definedBehaviors remove: aRG2BehaviorDefinition.
	
	"TODO:Announce"
	
	