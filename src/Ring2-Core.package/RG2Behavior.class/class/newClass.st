instance creation
newClass

	^ self new 
		behaviorStrategy: (RG2ClassStrategy new);
		yourself