testing
comment: aRGComment

	self backend forBehavior setTraitCommentFor: self owner to: aRGComment.
	
	self owner announcer behaviorCommentModified: self owner.