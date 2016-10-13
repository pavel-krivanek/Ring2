tests
testBehaviorDefinitionModifiedForCategory

	| env announcements class | 
	
	env := RG2Environment new.
	class := env ensureClassNamed: #SomeClass.
	
	announcements := OrderedCollection new.
	env announcer when: RG2BehaviorDefinitionModified do: [ :announcement |
		(announcement behavior == class) ifTrue: [ 
			announcements add: announcement]].
	
	class category: 'some category'.
	self assert: announcements size equals: 1.
	
	
	
	