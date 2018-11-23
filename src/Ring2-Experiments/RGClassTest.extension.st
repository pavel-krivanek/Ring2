Extension { #name : #RGClassTest }

{ #category : #'*Ring2-Experiments' }
RGClassTest >> testCorrespondingObject [

	| def1 def2 def3 |
	
	def1 := RGClass named: #SomeClass.
	def2 := RGClass named: #SomeClass.
	def3 := RGClass named: #SomeClass1.
	
	self assert: (def1 correspondingObjectIn: def2 environment) equals: def2.
	self assert: (def1 correspondingObjectIn: def3 environment) equals: nil.
	
	self assert: (def1 superclass correspondingObjectIn: def2 environment) equals: def2 superclass.
	self assert: (def1 metaclass correspondingObjectIn: def2 environment) equals: def2 metaclass.
	self assert: (def1 superclass metaclass correspondingObjectIn: def2 environment) equals: def2 superclass metaclass.

	
		
]

{ #category : #'*Ring2-Experiments' }
RGClassTest >> testCorrespondingObjectForMetaclass [

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

]

{ #category : #'*Ring2-Experiments' }
RGClassTest >> testCorrespondingObjectForMetaclassTrait [

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

]

{ #category : #'*Ring2-Experiments' }
RGClassTest >> testCorrespondingObjectForTrait [

	| def1 def2 def3 |
	
	def1 := RGTrait named: 'SomeTrait'.
	def2 := RGTrait named: 'SomeTrait'.
	def3 := RGTrait named: 'SomeTrait1'.
	
	self assert: (def1 correspondingObjectIn: def2 environment) equals: def2.
	self assert: (def1 correspondingObjectIn: def3 environment) equals: nil.

	self assert: (def1 classTrait correspondingObjectIn: def2 environment) equals: def2 classTrait.

	self assert: (def1 superclass correspondingObjectIn: def2 environment) equals: def2 superclass.
	self assert: (def1 metaclass correspondingObjectIn: def2 environment) equals: def2 metaclass.
	self assert: (def1 superclass metaclass correspondingObjectIn: def2 environment) equals: def2 superclass metaclass.

]
