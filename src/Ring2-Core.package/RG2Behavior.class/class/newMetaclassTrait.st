instance creation
newMetaclassTrait

	^ self new 
		behaviorStrategy: (RG2MetaclassTraitStrategy new);
		yourself