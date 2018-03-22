properties
removePropertyNamed: propertyName 
	"Remove the annotation named <annotationName>. Fails quietly if there 
	is no annotation with the given name."
	
	(self hasPropertyNamed: propertyName)
		ifTrue:[ properties removeKey: propertyName ]