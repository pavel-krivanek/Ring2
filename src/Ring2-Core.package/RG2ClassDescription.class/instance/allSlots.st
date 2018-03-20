done
allSlots

	| superclassSlots |
	superclassSlots := OrderedCollection new.
	((self superclass == self) or: [self superclass isNil ]) ifFalse: [ 
		 superclassSlots addAll: self superclass allSlots ].
	^ (superclassSlots, self layout allSlots) asArray.