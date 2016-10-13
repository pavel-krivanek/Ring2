tests
testClassVariablesCollection
	
	| class env classVariable1 classVariable2 classVariable3 |

	class := RG2ClassDefinition unnamed.
	env := class environment.

	self assert: class classVariables isEmpty.
	self assert: (class hasUnresolved: #classVariables).
	
	classVariable1 := RG2ClassVariableDefinition named: #ClassVariable1 parent: class.
	class addClassVariable: classVariable1.
	self assert: class classVariables size equals: 1.

	self assert: (class hasResolved: #classVariables).
	
	classVariable2 := RG2ClassVariableDefinition named: #ClassVariable2 parent: class.
	class addClassVariable: classVariable2.
	self assert: class classVariables size equals: 2.
	
	classVariable3 := RG2ClassVariableDefinition named: #ClassVariable3 parent: class.
	class addClassVariable: classVariable3.
	self assert: class classVariables size equals: 3.

	class removeClassVariable: classVariable3.
	self assert: class classVariables size equals: 2.

	class cleanClassVariables.
	self assert: class classVariables isEmpty.
	self assert: (class hasResolved: #classVariables).
