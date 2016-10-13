unresolved objects
createNewUnresolvedMetaclassMetaclassFor: aRG2BehaviorDefinition

	self readOnlyError 
	"| unresolvedValue |
	
	unresolvedValue := RG2UnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."