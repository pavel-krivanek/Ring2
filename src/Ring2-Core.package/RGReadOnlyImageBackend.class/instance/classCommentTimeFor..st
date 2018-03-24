class comment
classCommentTimeFor: anRGComment

	^ anRGComment timeForStamp: (self realBehaviorFor: anRGComment parent) organization commentStamp.