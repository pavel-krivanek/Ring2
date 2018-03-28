initialization
originFor: anId 

	^ self originFor: anId ifAbsent: [ RGResolvingError signal ] 