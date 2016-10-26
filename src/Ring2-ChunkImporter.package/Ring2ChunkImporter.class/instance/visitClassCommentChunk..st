visitor
visitClassCommentChunk: aChunk

	| class comment |
	
	class := self classNamed: aChunk behaviorName.
	comment := RG2CommentDefinition parent: class.
	comment content: aChunk contents.
	comment author: (comment authorForStamp: aChunk stamp).
	comment time: (comment timeForStamp: aChunk stamp).
	class comment: comment.
	