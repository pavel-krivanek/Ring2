tests
testResolveSimpleBehaviorChange

	| class change id resolvedChanges | 
	
	class := env ensureClassNamed: #OldName.
	class name: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	resolvedChanges := resolver resolve: { change }.
	
	id := resolver idFor: class.
	self assert: (resolver originFor: id) equals: class.
	
	resolvedChanges allSatisfy: [ :each | each behavior isNil. ].
	resolvedChanges allSatisfy: #isBehaviorChange.
	
	