tests
testBehaviorParentRenamed

	| env announcements class superclass | 
	
	env := RG2Environment new.
	class := env ensureClassNamed: #SomeClass.
	superclass := env ensureClassNamed: #SomeSuperclass.
	
	class superclass: superclass.
	
	announcements := OrderedCollection new.
	env announcer when: RG2BehaviorParentRenamed do: [ :announcement |
		(announcement behavior == class) ifTrue: [ 
			announcements add: announcement]].
	
	class name: #NewName.
	self assert: announcements size equals: 0.
	superclass name: #NewSuperclass1.
	self assert: announcements size equals: 1.
	
	
	
	
	