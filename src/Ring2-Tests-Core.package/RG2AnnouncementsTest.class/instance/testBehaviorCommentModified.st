tests
testBehaviorCommentModified

	| env announcements behavior | 
	
	env := RG2Environment new.
	announcements := OrderedCollection new.
	env announcer when: RG2BehaviorCommentModified do: [ :announcement | announcements add: announcement ].
	
	behavior := env ensureClassNamed: #SomeClass.
	self assert: announcements isEmpty.
	behavior comment content: 'some comment'.
	self assert: announcements size equals: 1.
	behavior comment author: 'SomeAuthor'.
	behavior comment time: DateAndTime new.
	self assert: announcements size equals: 3.
	self assert: (announcements allSatisfy: [:each | each behavior == behavior ]).
	
	
	
	
	