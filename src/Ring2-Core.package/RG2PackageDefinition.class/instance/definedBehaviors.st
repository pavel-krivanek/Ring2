accessing - model
definedBehaviors
	"Retrieves the traits defined in the receiver"

	| allBehaviors |
	allBehaviors := IdentitySet new.
	self definedBehaviorsDo: [ :each | allBehaviors add: each].
	^ allBehaviors asArray
