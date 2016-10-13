accessing - backend
removeProtocol: aRG2ProtocolDefinition 

	| protocolUsers |  
	self backend forBehavior removeProtocol: aRG2ProtocolDefinition from: self.
	protocolUsers := self methods select: [ :each | each protocol == aRG2ProtocolDefinition ].
	protocolUsers ifNotEmpty: [ 
		| asYetUnclassified |
		asYetUnclassified := self ensureAsYetUnclassifiedProtocol.
		protocolUsers do: [ :each | each protocol: asYetUnclassified ] ].
	
	self announcer behaviorReorganized: self.

	
	