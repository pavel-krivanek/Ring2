accessing
oldName: anOldName newName: aNewName

	"We do not know if create the change record before or after the change is actually done."
	
	oldName := anOldName.
	newName := aNewName.

	behaviorName = anOldName 
		ifFalse: [ 
			"the change record was done after actual renaming"
			behaviorName := anOldName ]
	
	
	

	