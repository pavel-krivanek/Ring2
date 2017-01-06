cleaning
clean

	self unifyMetaclass.
	self hasTraits ifTrue: [ 
		self unifyTrait.
		self unifyClassTrait. ].
	self cleanSuperclassesOfMetaclasses.
	self cleanUnusedUnreferencedBehaviors.
	self cleanUnusedUnreferencedPackages.
