class comment
classCommentAuthorFor: aRG2CommentDefinition

	^ aRG2CommentDefinition authorForStamp: (self realBehaviorFor: aRG2CommentDefinition parent) organization commentStamp.
