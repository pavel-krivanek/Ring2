asYetUnclassified
asYetUnclassifiedProtocolOrNil

	self protocolsDo: [ :each |
		(each name = self asYetUnclassifiedProtocolName) ifTrue: [ ^ each ] ].
	
	^ nil.
