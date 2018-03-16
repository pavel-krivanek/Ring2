class comment
classCommentAuthorFor: aRG2Comment

	^ aRG2Comment authorForStamp: (self realBehaviorFor: aRG2Comment parent) organization commentStamp.
