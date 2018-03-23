testing
testSimpleAddition

	| env class change |
	
	env := RG2Environment new.
	class := env ensureClassNamed: #SomeClass.
	change := RG2BehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	