unresolved objects
createNewUnresolvedMetaclassMetaclassFor: aRG2Behavior

	self readOnlyError 
	"| unresolvedValue |
	
	unresolvedValue := RG2UnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."