actions
revertIn: anRGEnvironment

	| resolver resolvedChanges resolvingContext results |
	
	resolver := RGChangesResolver for: self environment.
	resolvedChanges := resolver resolve: self changes.
	
	resolvingContext := RGChangesResolvingContext forChanges: resolvedChanges.

	results := resolvedChanges reversed collect: [ :each | 
		each revertIn: anRGEnvironment inContext: resolvingContext ].
	
	^ results size = 1
		ifTrue: [ results anyOne ]
		ifFalse: [ results ]