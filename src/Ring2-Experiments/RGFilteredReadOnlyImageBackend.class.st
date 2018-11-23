"
Unfinished experiment
"
Class {
	#name : #RGFilteredReadOnlyImageBackend,
	#superclass : #RGReadOnlyImageBackend,
	#category : 'Ring2-Experiments'
}

{ #category : #'as yet unclassified' }
RGFilteredReadOnlyImageBackend >> allowedClasses [ 

	^ { Color. Color class. Object. Object class. ProtoObject. ProtoObject class. Class. Class class. ClassDescription. ClassDescription class. Behavior. Behavior class. Metaclass. Metaclass class. } 
]

{ #category : #environment }
RGFilteredReadOnlyImageBackend >> behaviorsFor: anRGEnvironment do: aBlock [

	self allowedClasses do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].
]

{ #category : #environment }
RGFilteredReadOnlyImageBackend >> definedBehaviorsFor: anRGPackageDefinition do: aBlock [

	| realPackage |
	
	realPackage := self realPackageFor: anRGPackageDefinition.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			(self allowedClasses includes: cls) ifTrue: [ 
				def := self definitionFor: cls ifAbsentRegister: [cls asRingMinimalDefinitionIn: anRGPackageDefinition environment].
				aBlock value: def.]]].
]

{ #category : #environment }
RGFilteredReadOnlyImageBackend >> packagesFor: anRGEnvironment do: aBlock [

	(self allowedClasses collect: #package as: Set) do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].
]
