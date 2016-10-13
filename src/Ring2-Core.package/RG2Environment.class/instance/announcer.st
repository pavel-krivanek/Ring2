accessing
announcer

	^ announcer ifNil: [ announcer := RG2EnvironmentAnnouncer new ]