copying
copyForEnvironment: anRGEnvironment

	^ self shallowCopy postCopy 
		environment: anRGEnvironment;
		yourself.