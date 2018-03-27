resolving
resolve

	"Try to resolve the origin behavior. Returns true if the origin was successfully resolved"
	
	self hasResolvedOriginName ifTrue: [ ^ true ].
	self behavior: behavior.
	^ self hasResolvedOriginName.