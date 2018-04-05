tests
testProperties

	"test methods that provide access to change properties"

	| change | 
	
	change := RGChange new.
	
	self assert: change hasProperties not.
	self assert: (change hasPropertyNamed: #note) not.
	self assert: change propertyNames isEmpty.
	self assert: (change removePropertyNamed: #notExisting) propertyNames isEmpty.
	self assert: (change propertyNamed: #note ifAbsent: [#someNote]) equals: #someNote.
	self assert: (change hasPropertyNamed: #note) not.
	self assert: (change propertyNamed: #note ifAbsentPut: [#someNote]) equals: #someNote.
	self assert: (change hasPropertyNamed: #note).
	self assert: (change propertyNamed: #note) equals: #someNote.
	self assert: change hasProperties.
	self assert: change propertyNames asArray equals: {#note}.
	change propertyNamed: #note2 put: #someNote2.
	self assert: (change propertyNames asArray includesAll: {#note. #note2}).
	change removePropertyNamed: #note.
	self assert: change propertyNames asArray equals: {#note2}.
	change removePropertyNamed: #note2.
	self assert: change hasProperties not.
	self assert: (change hasPropertyNamed: #note) not.
	self assert: change propertyNames isEmpty.
	
