queries - protocols
protocols

	| result |

	result := OrderedCollection new.
	self protocolsDo: [ :each | result add: each ].
	^ result