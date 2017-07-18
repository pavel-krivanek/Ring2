queries - variables
allClassVariables
	"Answer a collection of the receiver's classVariables, including those defined its superclasses"

	^ ((self superclass == nil) or: [ self superclass == self ]) 
		ifFalse:[ self classVariables ]
		ifTrue:[ self superclass allClassVariables, classVariables ]