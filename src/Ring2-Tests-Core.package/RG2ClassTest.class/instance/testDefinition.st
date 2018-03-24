tests
testDefinition

	| env aClass |
	
	env := RG2Environment new.
		
	aClass := env ensureClassNamed: 'Object'.
	aClass superclass: (env ensureClassNamed: 'ProtoObject').
	aClass package: (env ensurePackageNamed: 'Kernel-Objects').
	aClass addClassVariable: (RG2ClassVariable named: #DependentsFields parent: aClass).
	
	self assert: aClass definition = 'ProtoObject subclass: #Object
	instanceVariableNames: ''''
	classVariableNames: ''DependentsFields''
	package: ''Kernel-Objects'''
