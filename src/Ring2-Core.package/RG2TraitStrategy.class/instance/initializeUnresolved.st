testing
initializeUnresolved

	super initializeUnresolved.
	
	classTrait := RG2UnresolvedValue recursive.
	comment := self unresolvedValue: self defaultComment.
	package := self unresolvedValue: self defaultPackage.
