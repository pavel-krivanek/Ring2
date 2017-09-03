tests
testClassComment

	| env comment |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	comment := (Point asRing2MinimalDefinitionIn: env) comment.
	
	comment content notEmpty.
	comment author notEmpty.
	comment time > DateAndTime new.
	comment time <= DateAndTime now.
	
	