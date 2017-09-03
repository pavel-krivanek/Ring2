tests
testMethod

	| env method |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	method := (Point>>#x) asRing2MinimalDefinitionIn: env.
	
	method author notEmpty.
	method time > DateAndTime new.
	method time <= DateAndTime now.
	
	self assert: method selector equals: #x.
	self assert: (method package isRing2Object and: [method package isPackage]).
	self assert: method package name equals: 'Kernel'.
	self assert: (method package == method parent package).
	self assert: method sourceCode equals: (Point>>#x) sourceCode.