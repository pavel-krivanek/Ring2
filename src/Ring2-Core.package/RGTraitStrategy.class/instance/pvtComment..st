accessing
pvtComment: aRGComment

	self environment verifyOwnership: aRGComment.

	^ comment := aRGComment