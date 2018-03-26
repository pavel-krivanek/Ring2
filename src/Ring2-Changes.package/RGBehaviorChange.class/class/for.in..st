instance creation
for: anRGBehavior in: anRGChangeRecorder

	(anRGChangeRecorder environment = anRGBehavior environment)
		ifFalse: [ RGWrongEnvironment signal ].
	
	^ (self in: anRGChangeRecorder)
		behavior: anRGBehavior;
		yourself