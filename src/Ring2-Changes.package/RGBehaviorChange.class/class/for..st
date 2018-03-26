instance creation
for: anRGBehavior

	| newRecorder |
	
	newRecorder := RGChangeRecorder for: anRGBehavior environment.
	^ self for: anRGBehavior in: newRecorder