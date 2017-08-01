compiling
compileMethod: aRFiMethod
	^ OpalCompiler new
		class: aRFiMethod parent;
		source: aRFiMethod sourceCode;
		compile