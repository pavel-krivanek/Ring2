initialization
initializeUnresolved

	super initializeUnresolved.
	
	classTrait := RG2UnresolvedValue recursive.
	comment := self unresolvedValue: self defaultComment.
	category := self unresolvedValue: self defaultCategory.
	package := self unresolvedValue: self defaultPackage.
