class comment
classCommentAuthorFor: aRG2CommentDefinition

	^ self authorForStamp: (self realBehaviorFor: aRG2CommentDefinition parent) organization commentStamp.
