Class {
	#name : #RG2ResolveBehaviorInformationTest,
	#superclass : #RG2Test,
	#instVars : [
		'env'
	],
	#category : #'Ring2-Tests-Core'
}

{ #category : #support }
RG2ResolveBehaviorInformationTest >> detachFromImage [

	env backend: (RG2EnvironmentBackend new).
]

{ #category : #running }
RG2ResolveBehaviorInformationTest >> setUp [

	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
]

{ #category : #tests }
RG2ResolveBehaviorInformationTest >> testTraitAlias [

	| alias realAlias |
	
	realAlias := RG2TestClassD traitComposition transformations first.
	alias := realAlias asRing2MinimalDefinitionIn: env.
	alias resolveBehaviorInformation.
	self detachFromImage.	
	self assert: alias subject name equals: #RG2TestTraitB.	
	self assert: alias subject isTrait.
	self assert: alias subject isRing2Object.
	self assertCollection: (alias aliases ) hasSameElements: { #c3->#c2 }.

]
