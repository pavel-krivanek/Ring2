tests
testAST

	| method anAst |
	
	method := RG2MethodDefinition new.
	method sourceCode: 'someMethod ^ true'.
	anAst := method ast.
	self assert: (anAst isMethod).
	self assert: (anAst lastIsReturn)

