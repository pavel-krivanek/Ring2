instance creation
newMetaclass

	^ self new 
		behaviorStrategy: (RG2MetaclassStrategy new);
		yourself