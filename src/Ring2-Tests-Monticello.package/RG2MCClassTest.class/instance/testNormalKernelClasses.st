tests
testNormalKernelClasses
	
	"classes without special slots"
	
	(#Kernel asPackage definedClasses select: [:each | each isClass and: [each usesSpecialVariables not]]) do: [ :each |
		self testClass: each].