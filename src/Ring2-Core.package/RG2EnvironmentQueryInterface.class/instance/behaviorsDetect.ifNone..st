enumerating
behaviorsDetect: aBlock ifNone: exceptionBlock

	self behaviorsDo: [ :each |
		 (aBlock value: each) ifTrue: [^ each]].
	^ exceptionBlock value	
