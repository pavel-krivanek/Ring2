class comment
classCommentAuthorFor: anRGComment

	^ anRGComment authorForStamp: (self realBehaviorFor: anRGComment parent) organization commentStamp.
