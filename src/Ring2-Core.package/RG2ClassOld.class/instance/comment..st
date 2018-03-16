accessing - backend
comment: aRG2Comment

	self backend forBehavior setCommentFor: self to: aRG2Comment.
	
	self announcer behaviorCommentModified: self.