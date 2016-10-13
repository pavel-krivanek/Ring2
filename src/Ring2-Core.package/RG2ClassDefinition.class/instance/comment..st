accessing - backend
comment: aRG2CommentDefinition

	self backend forBehavior setCommentFor: self to: aRG2CommentDefinition.
	
	self announcer behaviorCommentModified: self.