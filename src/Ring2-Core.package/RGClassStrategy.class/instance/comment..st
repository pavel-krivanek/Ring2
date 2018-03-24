private - backend access
comment: aRGComment

	self backend forBehavior setCommentFor: self owner to: aRGComment.
	
	self owner announcer behaviorCommentModified: self.