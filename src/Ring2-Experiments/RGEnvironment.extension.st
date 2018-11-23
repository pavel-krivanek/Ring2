Extension { #name : #RGEnvironment }

{ #category : #'*Ring2-Experiments' }
RGEnvironment >> merge: anRGPackageDefinition [

	super merge: anRGPackageDefinition.
	
	((self hasUnresolved: #definedBehaviors) and: [ (anRGPackageDefinition hasUnresolved: #definedBehaviors) ])
		ifFalse: [ 
			(self hasResolved: #definedBehaviors) ifFalse: [ 
				self cleanDefinedBehaviors ].
			anRGPackageDefinition definedBehaviorsDo: [ :behavior |
				| newDefinition |
				 "create empty unresolved definition of the same kind in the same environment"
				newDefinition := behavior class unresolvedWithParent: self.
				newDefinition merge: behavior.
				self addDefinedBehavior: newDefinition ]].
	
	"TODO:extension methods"
]
