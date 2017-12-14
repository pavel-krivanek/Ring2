initialization
when: anAnnouncementClass send: aMessageSelector to: aReceiver
	self unsubscribe: aReceiver.
	environment announcer when: anAnnouncementClass send: aMessageSelector to: aReceiver