resolving
resolve

	"Try to resolve the origin behavior. Returns true if the origin was successfully resolved"
	
	self hasResolvedOrigin ifTrue: [ ^ true ].
	self behavior: behavior.
	^ self hasResolvedOrigin.