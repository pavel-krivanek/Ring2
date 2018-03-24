*Calypso-Ring2
methodDict

	^ Dictionary newFrom: (self methods collect: [ :each | each name asSymbol -> each ])