resolving
resolve

	"Try to resolve the origin behavior. Returns true if the origin was successfully resolved"
	
	self hasResolvedOriginName ifTrue: [ 
		self entityId 
			ifNotNil: [ ^ self ]
			ifNil: [ 
				self recorder registerOrigin: (self originFromName).
				^ self ]].
		
	self behavior: behavior.
	^ self hasResolvedOriginName.