accessing
environment
	
	^ self propertyNamed: #environment ifAbsent: [ self parent environment ].