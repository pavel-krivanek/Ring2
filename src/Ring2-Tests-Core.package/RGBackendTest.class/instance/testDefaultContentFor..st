as yet unclassified
testDefaultContentFor: aRGEnvironment

"	| names defaultNames kernelPackage |
	
	defaultNames := #('Behavior' 'Behavior class' 'Class' 'Class class' 'ClassDescription' 'ClassDescription class' 'Metaclass' 'Metaclass class' 'Object' 'Object class' 'ProtoObject' 'ProtoObject class').
	
	self assert: ((aRGEnvironment ask packages collect: #name) includes: 'Kernel').
	kernelPackage := aRGEnvironment ask packageNamed: 'Kernel'.

	names := (aRGEnvironment ask behaviors collect: #name).
	self assert: (names includesAll: defaultNames asSortedCollection).
	
	self assert: (aRGEnvironment ask behaviorNamed: 'ProtoObject') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ProtoObject').
	self assert: (aRGEnvironment ask behaviorNamed: 'ProtoObject') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'ProtoObject class').

	self assert: (aRGEnvironment ask behaviorNamed: 'Object') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ProtoObject').
	self assert: (aRGEnvironment ask behaviorNamed: 'Object') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Object class').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Behavior') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'Object').
	self assert: (aRGEnvironment ask behaviorNamed: 'Behavior') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Behavior class').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'ClassDescription') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'Behavior').
	self assert: (aRGEnvironment ask behaviorNamed: 'ClassDescription') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'ClassDescription class').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ClassDescription').
	self assert: (aRGEnvironment ask behaviorNamed: 'Class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Class class').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Metaclass') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ClassDescription').
	self assert: (aRGEnvironment ask behaviorNamed: 'Metaclass') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass class').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'ProtoObject class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'Class').
	self assert: (aRGEnvironment ask behaviorNamed: 'ProtoObject class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Object class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ProtoObject class').
	self assert: (aRGEnvironment ask behaviorNamed: 'Object class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Behavior class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'Object class').
	self assert: (aRGEnvironment ask behaviorNamed: 'Behavior class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'ClassDescription class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'Behavior class').
	self assert: (aRGEnvironment ask behaviorNamed: 'ClassDescription class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Class class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ClassDescription class').
	self assert: (aRGEnvironment ask behaviorNamed: 'Class class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass').
	
	self assert: (aRGEnvironment ask behaviorNamed: 'Metaclass class') superclass 
		equals: (aRGEnvironment ask behaviorNamed: 'ClassDescription class').
	self assert: (aRGEnvironment ask behaviorNamed: 'Metaclass class') metaClass 
		equals: (aRGEnvironment ask behaviorNamed: 'Metaclass').
		
	"