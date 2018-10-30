Class {
	#name : #RGFilteredReadOnlyImageBackendTest,
	#superclass : #RGBackendTest,
	#traits : 'TRGReadOnlyTest',
	#classTraits : 'TRGReadOnlyTest classTrait',
	#category : 'Ring2-Experiments'
}

{ #category : #tests }
RGFilteredReadOnlyImageBackendTest >> backendClass [

	^ RGEnvironmentBackend
]

{ #category : #tests }
RGFilteredReadOnlyImageBackendTest >> testFiltering [

	| env |
	
	env := RGEnvironment new.
	env backend: (RGFilteredReadOnlyImageBackend for: env).
	
	self assert: (env ask classNamed: #Object) notNil.
	self assert: (env ask classNamed: #RGObject) isNil.
	
	
]
