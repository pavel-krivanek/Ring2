unresolved objects
createNewUnresolvedClass

	self readOnlyError 
"	| unresolvedValue |
	
	unresolvedValue := RG2UnresolvedValue new.
	unresolvedValue default: unresolvedValue.
	^ unresolvedValue."
