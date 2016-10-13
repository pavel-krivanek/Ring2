accessing
backend 

	^ backend ifNil: [ backend := RG2EnvironmentBackend for: self ].