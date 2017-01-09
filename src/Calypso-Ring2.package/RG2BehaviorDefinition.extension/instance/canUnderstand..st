*Calypso-Ring2
canUnderstand: selector
	"Answer whether the receiver can respond to the message whose selector 
	is the argument."

	^ self methods anySatisfy: [ :method | method name = selector ].