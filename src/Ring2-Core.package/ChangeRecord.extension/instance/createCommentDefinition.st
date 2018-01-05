*Ring2-Core
createCommentDefinition
	"Retrieves a RGCommentDefinition object based on the data of the receiver"

	^ (RG2CommentDefinition named: 'Comment')
		parent name: self commentClass;
		content: self string;
		stamp: stamp;
		yourself 