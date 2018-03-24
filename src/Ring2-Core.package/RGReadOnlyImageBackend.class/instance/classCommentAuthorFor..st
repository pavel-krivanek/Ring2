class comment
classCommentAuthorFor: aRGComment

	^ aRGComment authorForStamp: (self realBehaviorFor: aRGComment parent) organization commentStamp.
