visiting
visitUnresolvedChanges: aDictionary

	self hasResolvedOrigin 
		ifTrue: [ 
			behavior ifNotNil: [ 
				aDictionary at: behavior ifPresent: [ :unresolvedChanges |
					unresolvedChanges do: [ :each |
						each pvtBehaviorName: self pvtBehaviorName ].
					aDictionary removeKey: behavior ] ] ]
		ifFalse: [ 
			behavior
				ifNotNil: [ 
					(aDictionary at: behavior ifAbsentPut: [ Set new ]) add: self ] ].
