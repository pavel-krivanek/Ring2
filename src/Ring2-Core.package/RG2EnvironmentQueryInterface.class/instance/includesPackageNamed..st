testing
includesPackageNamed: aString
	
	self packagesDo: [:each |
		(each name = aString) ifTrue: [ ^ true ] ].
	^ false