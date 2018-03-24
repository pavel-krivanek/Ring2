properties
propertyNamed: annotationName ifAbsent: exceptionBlock 

	self hasProperties
		ifFalse: [ ^ exceptionBlock value ].

	^ self properties
			at: annotationName
			ifAbsent: [ exceptionBlock value ]