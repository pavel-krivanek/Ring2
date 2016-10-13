accessing - model
extensionMethods
	"Retrieves the traits defined in the receiver"

	| allBehaviors |
	allBehaviors := IdentitySet new.
	self extensionMethodsDo: [ :each | allBehaviors add: each].
	^ allBehaviors asArray
