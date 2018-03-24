accessing - backend
removeBehavior: aRGBehavior

	self backend forEnvironment removeBehavior: aRGBehavior from: self.
	
	"remove extensions methods deleted with the behavior from owning packages"
	aRGBehavior extensions do: [ :each |
		each package removeExtensionMethod: each ].
	
	(aRGBehavior package notNil and: [aRGBehavior package  definedBehaviors includes: aRGBehavior]) ifTrue: [ 
	aRGBehavior package removeDefinedBehavior: aRGBehavior.
	].
	
	self announcer behaviorRemoved: aRGBehavior.
	
	(aRGBehavior hasResolvedName) ifTrue: [ 
		self queryInterface behaviorsDictionary removeKey: aRGBehavior name ifAbsent: []].
