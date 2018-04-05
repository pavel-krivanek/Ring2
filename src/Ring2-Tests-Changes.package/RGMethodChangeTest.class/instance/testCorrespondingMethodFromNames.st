tests
testCorrespondingMethodFromNames

	"test if the method lookup in the environment works"

	| class method change result |
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	
	result := change correspondingMethodFrom: method environment named: #someMethod in: #SomeClass.
	
	self assert: result equals: method.