accessing - backend
removeBehavior: aRG2BehaviorDefinition

	self backend forEnvironment removeBehavior: aRG2BehaviorDefinition from: self.
	
	"remove extensions methods deleted with the behavior from owning packages"
	aRG2BehaviorDefinition extensions do: [ :each |
		each package removeExtensionMethod: each ].
	
	(aRG2BehaviorDefinition package notNil and: [aRG2BehaviorDefinition package  definedBehaviors includes: aRG2BehaviorDefinition]) ifTrue: [ 
	aRG2BehaviorDefinition package removeDefinedBehavior: aRG2BehaviorDefinition.
	].
	
	self announcer behaviorRemoved: aRG2BehaviorDefinition.
	
	(aRG2BehaviorDefinition hasResolved: #name) ifTrue: [ 
		self queryInterface behaviorsDictionary removeKey: aRG2BehaviorDefinition name ifAbsent: []].
