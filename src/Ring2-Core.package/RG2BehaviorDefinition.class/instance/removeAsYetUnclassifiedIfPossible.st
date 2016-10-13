as yet unclassified
removeAsYetUnclassifiedIfPossible

	"remove 'as yet unlcassified' protocol if possible"
	
	| aProtocol | 
	aProtocol := self asYetUnclassifiedProtocolOrNil.
	aProtocol ifNil: [ ^ self ].
	self localMethodsDo: [ :each | 
		each protocol == aProtocol ifTrue: [ ^ self ] ].
	"no method uses this protocol, remove it"
	self removeProtocol: aProtocol.