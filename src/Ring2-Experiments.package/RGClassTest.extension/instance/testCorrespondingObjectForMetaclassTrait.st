*Ring2-Experiments
testCorrespondingObjectForMetaclassTrait

	| def1 def2 def3 |
	
	def1 := RGMetaclassTrait named: 'SomeTrait classTrait'.
	def2 := RGMetaclassTrait named: 'SomeTrait classTrait'.
	def3 := RGMetaclassTrait named: 'SomeTrait1 classTrait'.
	
	self assert: (def1 correspondingObjectIn: def2 environment) equals: def2.
	self assert: (def1 correspondingObjectIn: def3 environment) equals: nil.

	self assert: (def1 baseTrait correspondingObjectIn: def2 environment) equals: def2 baseTrait.

	self assert: (def1 superclass correspondingObjectIn: def2 environment) equals: def2 superclass.
	self assert: (def1 metaclass correspondingObjectIn: def2 environment) equals: def2 metaclass.
	self assert: (def1 superclass metaclass correspondingObjectIn: def2 environment) equals: def2 superclass metaclass.
