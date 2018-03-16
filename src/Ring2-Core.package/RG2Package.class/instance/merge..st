merging
merge: aRG2Package

	super merge: aRG2Package.
	
	((self hasUnresolved: #definedBehaviors) and: [ (aRG2Package hasUnresolved: #definedBehaviors) ])
		ifFalse: [ 
			(self hasResolved: #definedBehaviors) ifFalse: [ 
				self cleanDefinedBehaviors ].
			aRG2Package definedBehaviorsDo: [ :behavior |
				| newDefinition |
				 "create empty unresolved definition of the same kind in the same environment"
				newDefinition := behavior class unresolvedWithParent: self.
				newDefinition merge: behavior.
				self addDefinedBehavior: newDefinition ]].
	
	"TODO:extension methods"