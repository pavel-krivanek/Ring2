class comment
classCommentTimeFor: aRG2Comment

	^ aRG2Comment timeForStamp: (self realBehaviorFor: aRG2Comment parent) organization commentStamp.