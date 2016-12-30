initialization
initializeUnresolved

	super initializeUnresolved.
	
	comment := self unresolvedValue: self defaultComment.	
	classVariables := self unresolvedValue: self defaultClassVariables.	
	category := self unresolvedValue: self defaultCategory.	
	package := self unresolvedValue: self defaultPackage.	
	sharedPools := self unresolvedValue: self defaultSharedPools.	
	tagsForMethods := self unresolvedValue: self defaultTagsForMethods.	
	tags := self unresolvedValue: self defaultTags.	
	