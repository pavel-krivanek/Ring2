initialization
initialize
	super initialize.
	environment := RG2Environment new.
	package := environment ensurePackageNamed: 'ChangeSet'.
	doIts := Set new.