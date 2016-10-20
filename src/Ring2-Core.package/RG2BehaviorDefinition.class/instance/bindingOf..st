as yet unclassified
bindingOf: varName
	"Answer the binding of some variable resolved in the scope of the receiver"
	^ (self superclass == self or: [ self superclass isNil ])
		ifFalse: [self superclass bindingOf: varName]
		ifTrue: [ nil ]