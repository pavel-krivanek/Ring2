*Calypso-Ring2
classesForClassTag: aTag

	^ self classes select: [ :each | each category  = aTag or: [ each category = (self packageName, '-', aTag) ] ]