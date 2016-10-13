queries - hierarchy
subclasses

	^ self environment ask behaviors select: [ :each | each superclass == self ]