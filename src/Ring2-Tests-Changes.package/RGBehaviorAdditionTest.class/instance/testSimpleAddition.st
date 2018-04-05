testing
testSimpleAddition

	"test if we can create a change of a resolved class"

	| env class change |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	change := RGBehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	