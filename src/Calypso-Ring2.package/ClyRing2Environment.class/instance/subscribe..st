initialization
subscribe: anObject
	self unsubscribe: anObject.
	self environment announcer when: SystemAnnouncement send: #systemChanged: to: anObject