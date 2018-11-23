Class {
	#name : #RGBehaviorNameResolvedChangeTest,
	#superclass : #RGBehaviorChangeTest,
	#category : 'Ring2-Tests-Changes'
}

{ #category : #'tests - apply' }
RGBehaviorNameResolvedChangeTest >> testApplyOnClassInEmptyEnvironment [

	"test applying on a different empty environment. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - apply' }
RGBehaviorNameResolvedChangeTest >> testApplyOnClassInTheSameEnvironment [

	"test applying in the same environment. it should set the class of the name"

	| class change result |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	result := change applyIn: class environment.
	self assert: result equals: class.
		
	self assert: class name equals: #NewName.
]

{ #category : #tests }
RGBehaviorNameResolvedChangeTest >> testResolvingReturnsNewChanges [

	"check if the resolving returns always a change copy"

	| class change |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.

	self checkResolvingReturnsNewObjectsFor: change.		
	
]

{ #category : #'tests - revert' }
RGBehaviorNameResolvedChangeTest >> testRevertOnClassInADifferentEnvironment [

	"try to revert a class change in the different environment that includes a behavior with the new name. It should make the name unresolved"

	| class class2 change result |
	
	class := RGClass unresolved.
	class name: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	result := change revertIn: class2 environment.
	
	self assert: result equals: class2.
		
	self assert: class2 hasResolvedName not.
	self assert: (class2 environment ask behaviorNamed: #NewName) equals: nil.
]

{ #category : #'tests - revert' }
RGBehaviorNameResolvedChangeTest >> testRevertOnClassInEmptyEnvironment [

	"try to revert the change on an empty environment. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - revert' }
RGBehaviorNameResolvedChangeTest >> testRevertOnClassInEmptyEnvironmentCleaned [

	"try to revert the class in a empty environment without a binding to a real behavior. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - revert' }
RGBehaviorNameResolvedChangeTest >> testRevertOnClassInTheDifferentEnvironmentWithCleaned [

	"try to revert a clened change on the class in the different environment. It should unresolve the method name"

	| env env2 class class2 change result |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	env2 := RGEnvironment new.
	class2 := env2 ensureClassNamed: #NewName.

	result := change revertIn: env2.
	self assert: result equals: class2.
	self assert: class2 hasResolvedName not.

		
]

{ #category : #'tests - revert' }
RGBehaviorNameResolvedChangeTest >> testRevertOnClassInTheSameEnvironmentCleaned [

	"try to revert a cleaned change in the same environment where the class has already unresolved name. It should raise an resolving error"
	
	| class change |
	
	class := RGClass unresolved.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	
	self should: [ change revertIn: class environment ] raise: RGResolvingError.
		
]

{ #category : #'tests - revert' }
RGBehaviorNameResolvedChangeTest >> testRevertOnClassInTheSameEnvironmentWithADifferentClass [

	"try to revert in the same environment but on a different class of the same name. It should make its name unresolved"

	| env class class2 change result |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.

	env removeBehavior: class.
	class2 := env ensureClassNamed: #NewName.
	
	result := change revertIn: class2 environment.
	self deny: result equals: class.
	self assert: result equals: class2.
	self assert: class2 hasResolvedName not.

		
]

{ #category : #tests }
RGBehaviorNameResolvedChangeTest >> testSimpleResolving [

	"test resolving of the name on a class with an unresolved name"

	| class change |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	class name: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	
]

{ #category : #tests }
RGBehaviorNameResolvedChangeTest >> testSimpleResolvingAfter [

	"test creation of the change after the resolving of the behavior name was done"

	| class change |
	
	class := RGClass unresolved.
	class name: #NewName.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	
]
