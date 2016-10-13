properties
hasPropertyNamed: propertyName
	"Answer <true> if the receiver contains the property named <propertyName>. "
	
	self hasProperties	
		ifFalse:[ ^false ].
	^ properties includesKey: propertyName