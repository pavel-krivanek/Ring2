properties
propertyNamed: propertyName 
	"Answer the value of the annotation named <annotationName>, or 
	nil if the annotation is not defined for the receiver."
	
	^ self
		propertyNamed: propertyName
		ifAbsent: [ nil ]