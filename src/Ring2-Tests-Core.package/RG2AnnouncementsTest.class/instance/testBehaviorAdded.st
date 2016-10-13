tests
testBehaviorAdded

	| env announcements behavior | 
	
	env := RG2Environment new.
	announcements := OrderedCollection new.
	env announcer when: RG2BehaviorAdded do: [ :announcement | announcements add: announcement ].
	
	behavior := env ensureClassNamed: #SomeClass.
	self assert: announcements size equals: 4.
	self assert: announcements first behavior == behavior.
	
	self assert: (announcements select: [:each | each behavior isRing2Resolved]) size equals: 1.
	
	