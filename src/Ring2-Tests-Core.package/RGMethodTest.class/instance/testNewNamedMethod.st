tests
testNewNamedMethod

	| method |
	
	method := RGMethod named: #someMessage.
	
	self assert: (method isRing2Resolved).
	
	self assert: (method hasResolvedName).
	self assert: (method hasUnresolved: #sourceCode).

	self assert: method selector equals: 'someMessage'.
	self assert: method sourceCode lines first equals: 'someMessage'.

	self deny: method isMetaSide.
