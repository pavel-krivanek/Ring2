properties
propertyNamed: annotationName ifAbsent: exceptionBlock 
	"Answer the value of the property named <annotationName>. If the 
	property is not defined for the receiver, answer the result of 
	evaluating the <exceptionBlock>."

	self hasProperties
		ifFalse: [ ^ exceptionBlock value ].

	^self properties
			at: annotationName
			ifAbsent: [ exceptionBlock value ]