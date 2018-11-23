Class {
	#name : #RGMethodNameResolvedChangeTest,
	#superclass : #RGMethodChangeTest,
	#instVars : [
		'newName'
	],
	#category : 'Ring2-Tests-Changes'
}

{ #category : #'tests - apply' }
RGMethodNameResolvedChangeTest >> testApplyOnMethodInEmptyEnvironment [

	"test if we can apply a change on an empty environment. It should raise a resolving error"

	| method emptyEnvironment change |
	
	method := RGMethod unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - apply' }
RGMethodNameResolvedChangeTest >> testApplyOnMethodInTheSameEnvironment [

	"test if we can apply a change in the same environment. It should resolve and set the correct method name."

	| method  change result |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	result := change applyIn: method environment.
	
	self assert: result equals: method.

	self assert: method name equals: #someMethod.		
]

{ #category : #tests }
RGMethodNameResolvedChangeTest >> testResolvingReturnsNewChanges [

	"check if the resolving returns always a change copy"

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	self checkResolvingReturnsNewObjectsFor: change.	
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertChangeCreatedAfterActualResolvingAndCleanedInResolvedClass [

	"test if we can revert a cleaned change created after the actual method name resolving. Method has known class. It should unresolve the method name"

	| class method change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	method name: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.

	change revertIn: method environment. 

	self assert: method hasResolvedName not.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertChangeCreatedBeforeActualResolving [

	"test if we can revert a change created before the actual method name resolving. It should unresolve the method name"

	| method change result |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	result := change revertIn: method environment.
	self assert: result equals: method.
	
	self assert: method hasResolvedName not.
	self assert: (method environment ask behaviorNamed: #someName) equals: nil.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertChangeCreatedBeforeActualResolvingAndCleaned [

	"test if we can revert a cleaned change created after the actual method name resolving. It should raise a resolving error because we lost a binding to real behavior because we do not know the class name"

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	method name: #someName.

	self should: [ change revertIn: method environment. ] raise: RGResolvingError.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertChangeCreatedBeforeActualResolvingAndCleanedInResolvedClass [

	"test if we can revert a cleaned change created before the actual method name resolving. Method has known class. It should unresolve the method name"

	| class method change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	method name: #someName.

	change revertIn: method environment. 

	self assert: method hasResolvedName not.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnClassInADifferentEnvironment [

	"try to revert the method name change in the different environment. The method has unresolved class. It should raise a resolving error."

	| method method2 change |
	
	method := RGMethod unresolved.
	method name: #someName.
	method2 := RGMethod named: #newName.

	change := RGMethodNameResolvedChange for: method newName: #newName.
	
	self should: [ change revertIn: method2 environment ] raise: RGResolvingError.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnClassInTheSameEnvironment [

	"try to revert the method resolving in the same environment. The method belongs to an unresolved class. It should unresolve the method name because we still know the original method object"

	| method  change |
	
	method := RGMethod unresolved.
	method name: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	
	change revertIn: method environment.
	
	self assert: method hasResolvedName not.

]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnClassInTheSameEnvironmentCleaned [

		"try to revert the cleaned method resolving change in the same environment. The method belongs to an unresolved class. It should raise a resolving error because we cannot assign the change to any existing method"

	| method  change |
	
	method := RGMethod unresolved.
	method name: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	
	self should: [ change revertIn: method environment ] raise: RGResolvingError.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnExistingMethodInTheSameEnvironment [

	"test reverting of the method name resolving in the same environment. It should unresolve the method name."

	| method change |
	
	method := RGMethod named: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	change revertIn: method environment.
		
	self assert: method hasResolvedName not.

]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnMethodInEmptyEnvironment [

	"try to revert a method change in a empty environment. It should raise a resolving error."

	| method emptyEnvironment change |
	
	method := RGMethod unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGMethodNameResolvedChange for: method newName: #NewName.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnResolvedClassInADifferentEnvironment [

	"try to revert the method name resolving in the different environment that contains a corresponding class and method. It should unresolve the method name "

	| class class2 method method2 change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	method name: #someName.
	class2 := RGClass named: #SomeClass.
	method2 := class ensureLocalMethodNamed: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	
	change revertIn: method2 environment.
		
	self assert: method2 hasResolvedName not.
	self assert: (method2 environment ask behaviorNamed: #newName) equals: nil.
]

{ #category : #'tests - revert' }
RGMethodNameResolvedChangeTest >> testRevertOnResolvedClassInADifferentEnvironmentWithCopy [

	"try to revert the method name resolving in the different environment that contains a corresponding class and method. The change is cleaned. It should unresolve the method name "

	| class class2 method method2 change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	method name: #someName.
	class2 := RGClass named: #SomeClass.
	method2 := class2 ensureLocalMethodNamed: #newName.

	change := RGMethodNameResolvedChange for: method newName: #newName.
	self deny: change environment equals: method2 environment.
	change := change copy clean.
	
	change revertIn: method2 environment.
		
	self assert: method2 hasResolvedName not.
	self assert: (method2 environment ask behaviorNamed: #newName) equals: nil.
]

{ #category : #tests }
RGMethodNameResolvedChangeTest >> testSimpleResolving [

	"test if we can create a change before the actual method name resolving"

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	method name: #someMethod.
	
	self assert: change method equals: method.
	self assert: change newName equals: #someMethod.
	
]

{ #category : #tests }
RGMethodNameResolvedChangeTest >> testSimpleResolvingAfter [

	"test if we can create a change after the actual method name resolving"

	| method change |
	
	method := RGMethod unresolved.
	method name: #someMethod.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	
	self assert: change method equals: method.
	self assert: change newName equals: #someMethod.
	
]
