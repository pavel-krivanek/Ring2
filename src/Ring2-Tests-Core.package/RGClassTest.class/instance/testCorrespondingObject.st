tests
testCorrespondingObject

	| def1 def2 def3 |
	
	def1 := RGClass named: #SomeClass.
	def2 := RGClass named: #SomeClass.
	def3 := RGClass named: #SomeClass1.
	
	self assert: (def1 correspondingObjectIn: def2 environment) equals: def2.
	self assert: (def1 correspondingObjectIn: def3 environment) equals: nil.
	
	self assert: (def1 superclass correspondingObjectIn: def2 environment) equals: def2 superclass.
	self assert: (def1 metaclass correspondingObjectIn: def2 environment) equals: def2 metaclass.
	self assert: (def1 superclass metaclass correspondingObjectIn: def2 environment) equals: def2 superclass metaclass.

	
		