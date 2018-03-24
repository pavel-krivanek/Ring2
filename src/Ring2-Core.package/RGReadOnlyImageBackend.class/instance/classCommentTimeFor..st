class comment
classCommentTimeFor: aRGComment

	^ aRGComment timeForStamp: (self realBehaviorFor: aRGComment parent) organization commentStamp.