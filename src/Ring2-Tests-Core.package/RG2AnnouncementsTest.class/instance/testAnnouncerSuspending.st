tests
testAnnouncerSuspending

	| env announcements behavior | 
	
	env := RG2Environment new.
	announcements := OrderedCollection new.
	env announcer when: RG2BehaviorAdded do: [ :announcement | announcements add: announcement ].
	
	env announcer suspendAllWhile: [ 
		behavior := env ensureClassNamed: #SomeClass.].
	
	self assert: announcements isEmpty