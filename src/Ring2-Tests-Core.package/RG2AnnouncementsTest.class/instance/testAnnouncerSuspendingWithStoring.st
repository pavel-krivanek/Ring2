tests
testAnnouncerSuspendingWithStoring

	| env announcements behavior stored | 
	
	env := RG2Environment new.
	announcements := OrderedCollection new.
	env announcer when: RG2BehaviorAdded do: [ :announcement | announcements add: announcement ].
	
	stored := env announcer suspendAllWhileStoring: [ 
		behavior := env ensureClassNamed: #SomeClass.].
	
	self assert: announcements isEmpty.
	self assert: stored notEmpty.
	"TODO: more detailed check"