running
testOriginFor

	"try to get origin from an ID"

	self should: [ resolvingContext originFor: 1 ] raise: RGResolvingError.
	resolvingContext ensureIdFor: #a proposed: 1.
	self assert: (resolvingContext originFor: 1) equals: #a.
	
