queries - methods
methods

	| allMethods |
	allMethods := IdentitySet new.
	self localMethodsDo: [ :each | allMethods add: each].
	^ allMethods asArray
