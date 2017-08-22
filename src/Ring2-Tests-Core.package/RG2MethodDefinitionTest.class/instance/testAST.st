tests
testAST
	
	| method ast |

	method := RG2MethodDefinition named: #someMethod.
	ast := method ast.
	self assert: ast isMethod.
	self assert: ast selector equals: #someMethod.
	

	
	