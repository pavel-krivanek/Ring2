cleaning
clean

	self unifyMetaclass.
	self unifyTrait.
	self unifyClassTrait.
	self cleanSuperclassesOfMetaclasses.
	self cleanUnusedUnreferencedBehaviors.