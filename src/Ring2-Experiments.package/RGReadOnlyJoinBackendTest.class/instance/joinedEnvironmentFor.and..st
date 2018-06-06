as yet unclassified
joinedEnvironmentFor: anRGEnvironment1 and: anRGEnvironment2

	| joinEnv |
	
	joinEnv := RGEnvironment new.
	joinEnv backend: (RGReadOnlyJoinBackend for: joinEnv).
	joinEnv backend environment1: anRGEnvironment1.
	joinEnv backend environment2: anRGEnvironment2.
	
	^ joinEnv 