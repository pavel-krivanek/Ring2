tests
testClassesWithTraits
	
	"classes without special slots"
	
	self skip. 
	"skip because of https://pharo.fogbugz.com/f/cases/22080/Monticello-wrongly-resolves-names-for-instance-variables-in-classes-that-contain-slots"
	
	Smalltalk allClasses
		select: [ :each | each isTrait not and: [each traits notEmpty or: [ each class traits notEmpty ]] ] 
		thenDo: [ :each | self testClass: each ]
	