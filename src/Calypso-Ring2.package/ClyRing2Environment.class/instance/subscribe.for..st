initialization
subscribe: anObject for: anAnnouncementClass
	self unsubscribe: anObject.
	environment announcer when: anAnnouncementClass send: #systemChanged: to: anObject