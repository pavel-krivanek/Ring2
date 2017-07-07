tests
testSourceCode
	
	| method source |

	method := RG2MethodDefinition named: #someMethod.
	self assert: method hasSourceCode.
	source := 'someMethod ^ self'.
	method sourceCode: source.
	self assert: method hasSourceCode.
	self assert: method sourceCode equals: source.
	self assert: method selector equals: #someMethod.
	
	