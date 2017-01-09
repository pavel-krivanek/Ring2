initialization
subscribe: anObject
	self unsubscribe: anObject.
	self environment announcer when: RG2Announcement send: #systemChanged: to: anObject