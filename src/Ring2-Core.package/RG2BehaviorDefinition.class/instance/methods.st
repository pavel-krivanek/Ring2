as yet unclassified
methods

	| allMethods |
	"TODO: really all methods"
	allMethods := IdentitySet new.
	self localMethodsDo: [ :each | allMethods add: each].
	^ allMethods asArray
