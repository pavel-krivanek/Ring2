testing
comment: aRG2Comment

	self backend forBehavior setTraitCommentFor: self to: aRG2Comment.
	
	self owner announcer behaviorCommentModified: self.