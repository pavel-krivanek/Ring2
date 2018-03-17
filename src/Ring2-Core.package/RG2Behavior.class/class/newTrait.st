instance creation
newTrait

	^ self new 
		behaviorStrategy: (RG2TraitStrategy new);
		yourself