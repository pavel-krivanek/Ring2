tests
testBehaviorAdded

	| env announcements behavior | 
	
	env := RG2Environment new.
	announcements := OrderedCollection new.
	env announcer when: ClassAdded do: [ :announcement | announcements add: announcement ].
	
	behavior := env ensureClassNamed: #SomeClass.
	self assert: announcements size equals: 4.
	self assert: announcements first classAffected == behavior.
	
	self assert: (announcements select: [:each | each classAffected isRing2Resolved]) size equals: 1.
	
	