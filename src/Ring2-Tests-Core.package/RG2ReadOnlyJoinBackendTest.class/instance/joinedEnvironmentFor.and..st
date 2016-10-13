as yet unclassified
joinedEnvironmentFor: aRGEnvironment1 and: aRGEnvironment2

	| joinEnv |
	
	joinEnv := RG2Environment new.
	joinEnv backend: (RG2ReadOnlyJoinBackend for: joinEnv).
	joinEnv backend environment1: aRGEnvironment1.
	joinEnv backend environment2: aRGEnvironment2.
	
	^ joinEnv 