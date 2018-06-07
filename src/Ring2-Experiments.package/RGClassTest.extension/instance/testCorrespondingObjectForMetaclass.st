*Ring2-Experiments
testCorrespondingObjectForMetaclass

	| def1 def2 def3 |
	
	def1 := RGMetaclass named: 'SomeClass class'.
	def2 := RGMetaclass named: 'SomeClass class'.
	def3 := RGMetaclass named: 'SomeClass1 class'.
	
	self assert: (def1 correspondingObjectIn: def2 environment) equals: def2.
	self assert: (def1 correspondingObjectIn: def3 environment) equals: nil.

	"TODO: FIX!!!"
	self assert: (def1 baseClass correspondingObjectIn: def2 environment) equals: def2 baseClass.
	self assert: (def1 superclass correspondingObjectIn: def2 environment) equals: def2 superclass.
	self assert: (def1 metaclass correspondingObjectIn: def2 environment) equals: def2 metaclass.
	self assert: (def1 superclass metaclass correspondingObjectIn: def2 environment) equals: def2 superclass metaclass.
	self assert: (def1 superclass metaclass correspondingObjectIn: def2 environment) equals: def2 superclass metaclass.
