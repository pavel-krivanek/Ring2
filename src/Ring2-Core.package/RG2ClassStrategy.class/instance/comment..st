private - backend access
comment: aRG2Comment

	self backend forBehavior setCommentFor: self owner to: aRG2Comment.
	
	self owner announcer behaviorCommentModified: self.