initialize
initialize
	super initialize.
	environment := RG2Environment new.
	package := RGPackage named: 'ChangeSet'.
	doIts := Set new.