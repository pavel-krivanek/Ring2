tests
testClassComment

	| env comment |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	comment := (Point asRing2MinimalDefinitionIn: env) comment.
	
	comment content notEmpty.
	comment author notEmpty.
	comment time > DateAndTime new.
	comment time <= DateAndTime now.
	
	