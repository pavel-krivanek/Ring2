testing
comment: aRG2Comment

	self backend forBehavior setTraitCommentFor: self owner to: aRG2Comment.
	
	self owner announcer behaviorCommentModified: self.