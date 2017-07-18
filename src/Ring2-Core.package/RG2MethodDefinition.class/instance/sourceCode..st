accessing
sourceCode: anObject

	"ATTENTION: There is no check here if the selector is changed!"

	self backend forMethod setSourceCodeFor: self to: anObject
	"TODO: announcements"