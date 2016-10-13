accessing
isMetaSide: aBoolean

	aBoolean ifTrue: [ self error: 'This Ring definition cannot be on the meta side' ]