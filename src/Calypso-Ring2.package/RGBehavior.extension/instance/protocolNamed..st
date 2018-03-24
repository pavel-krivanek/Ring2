*Calypso-Ring2
protocolNamed: aString

	^ self protocols detect: [ :each | each name = aString ]