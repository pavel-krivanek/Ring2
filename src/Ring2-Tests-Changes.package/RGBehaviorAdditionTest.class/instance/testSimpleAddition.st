testing
testSimpleAddition

	| env class change |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	change := RGBehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	