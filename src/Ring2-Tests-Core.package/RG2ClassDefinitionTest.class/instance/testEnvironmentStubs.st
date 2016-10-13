tests
testEnvironmentStubs

	| package env |
	
	package := RG2ClassDefinition named: 'SomeClass'.
	env := package environment.
"	self assert: (env ask behaviors size = (2)). 
	self assert: (env ask packages size = (1+2)).
	self assert: (env ask packages anySatisfy: [ :each | each unresolvedProperties includes: #name]).
"	