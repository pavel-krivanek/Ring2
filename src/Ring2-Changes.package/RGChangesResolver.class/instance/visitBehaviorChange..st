visiting
visitBehaviorChange: anRGBehaviorChange

	| changeCopy behavior id | 
	
	changeCopy := anRGBehaviorChange copyForEnvironment: environment.
	behavior := changeCopy pvtBehavior.
	changeCopy clean.
	id := nil.
	
	behavior 
		ifNotNil: [ 
			id := self ensureOriginId: behavior.
			changeCopy hasResolvedOriginName
				ifTrue: [ lastKnownNames at: id put: changeCopy behaviorName ] 
				ifFalse: [ 
					lastKnownNames at: id ifPresent: [ :knownName |
						changeCopy pvtBehaviorName: knownName ] ] ]
		ifNil: [ 
			changeCopy hasResolvedOriginName
				ifTrue: [ id := lastKnownNames keyAtValue: lastKnownNames ] ].
			
	changeCopy originId: id.	
	
	^ changeCopy.
			
		
	