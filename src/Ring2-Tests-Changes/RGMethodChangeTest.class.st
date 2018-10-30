Class {
	#name : #RGMethodChangeTest,
	#superclass : #RGChangeTest,
	#category : 'Ring2-Tests-Changes'
}

{ #category : #utility }
RGMethodChangeTest >> resolvedMethodExample [

	^ (RGClass named: #SomeClass)
		ensureLocalMethodNamed: #someMethod.
]

{ #category : #tests }
RGMethodChangeTest >> testBasicCreation [

	"test if the new change storest the correct state"

	| class method change  |
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName equals: #SomeClass.
	self assert: change methodName equals: #someMethod.
	self assert: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGMethodChangeTest >> testCopy [

	"test the change copying"

	| change copy |
	
	change := RGMethodChange for: (self resolvedMethodExample).
	copy := change copyForEnvironment: nil.
	
	self assert: copy behaviorName equals: #SomeClass.
	self assert: copy methodName equals: #someMethod.
	
]

{ #category : #tests }
RGMethodChangeTest >> testCorrespondingMethodFromNames [

	"test if the method lookup in the environment works"

	| class method change result |
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	
	result := change correspondingMethodFrom: method environment named: #someMethod in: #SomeClass.
	
	self assert: result equals: method.
]

{ #category : #tests }
RGMethodChangeTest >> testCorrespondingMethodFromNamesInDifferentEnvironment [

	"test if the method lookup works a different environment"

	| class method class2 method2 change result |
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someMethod.
	class2 := RGClass named: #SomeClass.
	method2 := class2 ensureLocalMethodNamed: #someMethod.

	change := RGMethodChange for: method.
	
	result := change correspondingMethodFrom: method2 environment named: #someMethod in: #SomeClass.
	
	self assert: result equals: method2.
]

{ #category : #tests }
RGMethodChangeTest >> testEnvironment [

	"test if the change environment is the same as the environment of the related class"

	| method change |
	
	method := self resolvedMethodExample.
	change := RGBehaviorChange for: method.
	self assert: change environment equals: method environment.
	
]

{ #category : #tests }
RGMethodChangeTest >> testIsMethodChangeTest [

	"test of the 'testing' methods"

	| change |
	
	change := RGMethodChange for: (self resolvedMethodExample).
	
	self assert: change isMethodChange.
	self deny: change isBehaviorChange.
	
]

{ #category : #tests }
RGMethodChangeTest >> testSetPath [

	"test if the setting of the path correctly changes the state"

	| change |
	
	change := RGMethodChange for: (self resolvedMethodExample).

	self assert: change path equals: {#SomeClass. #someMethod}.
	
	change setPath: {#SomeClass. #someOtherMethod}. "not valid path, only for testing"
	self assert: change path equals: {#SomeClass. #someOtherMethod}.
	


]

{ #category : #tests }
RGMethodChangeTest >> testUnresolvedClassName [

	"test if we chan make a change a method owned by an unresolved class"

	| class method change  |
	
	class := RGClass unresolved.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName isNil.
	self assert: change methodName equals: #someMethod.
	self deny: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGMethodChangeTest >> testUnresolvedMethodAndClass [

	"test if we can create a change on an unresolved method owned by an unresolved class"

	| class method change  |
	
	class := RGClass unresolved.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName isNil.
	self assert: change methodName isNil.
	self deny: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGMethodChangeTest >> testUnresolvedMethodName [

	"test if we can create a change on a method with unresolved name. The method is owned by a class with a resolved name"

	| class method change  |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName equals: #SomeClass.
	self assert: change methodName isNil.
	self deny: change hasResolvedOriginName 
	
]
