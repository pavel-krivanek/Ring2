properties
hasPropertyNamed: propertyName
	"Answer <true> if the receiver contains the property named <propertyName>. "
	
	^ self hasProperties
		ifTrue: [ properties includesKey: propertyName ]	
		ifFalse:[ false ].
