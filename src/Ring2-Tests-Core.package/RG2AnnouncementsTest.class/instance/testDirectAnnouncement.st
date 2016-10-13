tests
testDirectAnnouncement

	| def announcements  |
	
	def := RG2BehaviorDefinition new.
	announcements := OrderedCollection new.
	def environment announcer when: RG2BehaviorAdded do: [ :announcement | announcements add: announcement ].
	def announce: (RG2BehaviorAdded new behavior: def).
	
	self assert: announcements size equals: 1.
	self assert: (announcements first behavior == def).