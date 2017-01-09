*Calypso-Ring2
withAllSuperclassesDo: aBlock 
	"Evaluate the argument, aBlock, for each of the receiver's superclasses."
	aBlock value: self.
	((self superclass == nil) or: [ self superclass == self ])
		ifFalse: [self superclass withAllSuperclassesDo: aBlock]