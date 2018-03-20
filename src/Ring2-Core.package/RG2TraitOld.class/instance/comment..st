accessing - backend
comment: aRG2Comment

	self backend forBehavior setTraitCommentFor: self to: aRG2Comment.
	
	self announcer behaviorCommentModified: self owner.