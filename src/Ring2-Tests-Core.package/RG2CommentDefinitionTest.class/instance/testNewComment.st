tests
testNewComment
	| comment time |
	
	comment := RG2CommentDefinition unnamed.
	
	self assert: (comment isRing2Resolved).
	
	self assert: (comment unresolvedProperties includesAll: #(content author time name)).
	
	self assert: comment content equals: ''.
	comment content: 'some class comment'.
	self assert: (comment unresolvedProperties includesAll: #(author time name)).
	self assert: comment content equals: 'some class comment'.
	
	self assert: comment author equals: ''.
	comment author: 'FullAuthorName'.
	self assert: (comment unresolvedProperties includesAll: #(time name)).
	self assert: comment author equals: 'FullAuthorName'.
	
	time := DateAndTime now.
	self assert: comment time equals: DateAndTime new.
	comment time: time.
	self assert: (comment unresolvedProperties includesAll: #(name)).
	self assert: comment time equals: time.
