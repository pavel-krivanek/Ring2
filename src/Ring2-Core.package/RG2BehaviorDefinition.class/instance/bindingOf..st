binding
bindingOf: varName
	"Answer the binding of some variable resolved in the scope of the receiver"

	^ self isRootInEnvironment
		ifFalse: [self superclass bindingOf: varName]
		ifTrue: [ nil ]