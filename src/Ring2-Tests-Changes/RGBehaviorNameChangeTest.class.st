Class {
	#name : #RGBehaviorNameChangeTest,
	#superclass : #RGBehaviorChangeTest,
	#category : 'Ring2-Tests-Changes'
}

{ #category : #'tests - apply' }
RGBehaviorNameChangeTest >> testApplyOnClassInADifferentEnvironment [

	"test applying of class renaming on a different environment that already contains a class of the same name. It should rename it."

	| class class2 change |
	
	class := RGClass named: #OldName.
	class2 := RGClass named: #OldName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change applyIn: class2 environment.
		
	self assert: class2 name equals: #NewName.
]

{ #category : #'tests - apply' }
RGBehaviorNameChangeTest >> testApplyOnClassInEmptyEnvironment [

	"test applying in the different environment. It should raise a resolving error because the there is no class of that name"

	| class emptyEnvironment change |
	
	class := RGClass named: #OldName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - apply' }
RGBehaviorNameChangeTest >> testApplyOnClassInTheSameEnvironment [

	"try to apply change in the same environment. It should rename the original class"

	| class change result |
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	result := change applyIn: class environment.
	self assert: result equals: class.
		
	self assert: class name equals: #NewName.
]

{ #category : #tests }
RGBehaviorNameChangeTest >> testChangeCreationBeforeActualNameChange [

	"test if the change created before the actual name change has the correct state"

	| class change |
	
	class := RGClass named: #OldName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.

	class name: #NewName.

	self assert: change behaviorName equals: #OldName
]

{ #category : #tests }
RGBehaviorNameChangeTest >> testNameChangeAfter [

	"test if the change created after the actual name change has correct state"

	| class change |
	
	class := RGClass named: #OldName.
	class name: #RGClass.
	
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change path equals: #(OldName).
	self assert: change oldName equals: #OldName.
	self assert: change newName equals: #NewName.
	
]

{ #category : #tests }
RGBehaviorNameChangeTest >> testResolvingReturnsNewChanges [

	"check if the resolving returns always a change copy"

	| class change |
	
	class := RGClass named: #OldName.
	class := class name: #RGClass.
	
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self checkResolvingReturnsNewObjectsFor: change.
]

{ #category : #'tests - revert' }
RGBehaviorNameChangeTest >> testRevertClassInADifferentEnvironment [

	"test class renaming applied in a different environment"

	| class class2 change result |
	
	class := RGClass named: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	result := change revertIn: class2 environment.
	
	self assert: result equals: class2.
		
	self assert: class2 name equals: #OldName.
]

{ #category : #'tests - revert' }
RGBehaviorNameChangeTest >> testRevertOnClassInADifferentEnvironment [

	"test reverting in class in a different environment that already includes a class with the new name. It should rename it to the old name."

	| class class2 change |
	
	class := RGClass named: #OldName.
	class name: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change revertIn: class2 environment.
		
	self assert: class2 name equals: #OldName.
]

{ #category : #'tests - revert' }
RGBehaviorNameChangeTest >> testRevertOnClassInEmptyEnvironment [

	"test reverting on an empty environment. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass named: #OldName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		
]

{ #category : #'tests - revert' }
RGBehaviorNameChangeTest >> testRevertOnClassInTheSameEnvironment [

	"test reverting in a class in the same environment. It should rename the class back"

	| class change |
	
	class := RGClass named: #NewName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change revertIn: class environment.
		
	self assert: class name equals: #OldName.
]

{ #category : #tests }
RGBehaviorNameChangeTest >> testSimpleNameChange [

	"check if the change has a correct internal state"

	| class change |
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change oldName equals: #OldName.
	self assert: change newName equals: #NewName.
	
]
