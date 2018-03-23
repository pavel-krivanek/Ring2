accessing - backend
removeBehavior: aRG2Behavior

	self backend forEnvironment removeBehavior: aRG2Behavior from: self.
	
	"remove extensions methods deleted with the behavior from owning packages"
	aRG2Behavior extensions do: [ :each |
		each package removeExtensionMethod: each ].
	
	(aRG2Behavior package notNil and: [aRG2Behavior package  definedBehaviors includes: aRG2Behavior]) ifTrue: [ 
	aRG2Behavior package removeDefinedBehavior: aRG2Behavior.
	].
	
	self announcer behaviorRemoved: aRG2Behavior.
	
	(aRG2Behavior hasResolvedName) ifTrue: [ 
		self queryInterface behaviorsDictionary removeKey: aRG2Behavior name ifAbsent: []].
