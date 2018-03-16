tests
testNewNamedMethod

	| method |
	
	method := RG2Method named: #someMessage.
	
	self assert: (method isRing2Resolved).
	
	self assert: (method hasResolved: #name).
	self assert: (method hasUnresolved: #sourceCode).

	self assert: method selector equals: 'someMessage'.
	self assert: method sourceCode lines first equals: 'someMessage'.

	self deny: method isMetaSide.
