*Ring2-Bootstrap
removeEmptyMethodTags

	self behaviorsDo: [ :cls | 
		| tagsToRemove |
		tagsToRemove := cls tagsForMethods select: [ :tag | (cls methodsTaggedWith: tag) isEmpty ].
		tagsToRemove do: [ :tag | cls removeMethodTag: tag].
	].