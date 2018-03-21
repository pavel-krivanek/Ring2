tests
testSpecialClasses
	
	"classes without special slots"
	
	(#Kernel asPackage definedClasses select: [:each | each isClass and: [each usesSpecialVariables]]) do: [ :each |
		self testClass: each].