cleaning
clean

	self unifyMetaclass.
	self cleanSuperclassesOfMetaclasses.
	self cleanUnusedUnreferencedBehaviors.