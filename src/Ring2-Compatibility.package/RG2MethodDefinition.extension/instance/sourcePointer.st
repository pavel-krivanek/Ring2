*Ring2-Compatibility
sourcePointer
	
	^ self method sourcePointer
	"
	^ self isActive 
		ifTrue: [ self compiledMethod sourcePointer ]
		ifFalse: [ self annotationNamed: self class sourcePointerKey ]		
		"