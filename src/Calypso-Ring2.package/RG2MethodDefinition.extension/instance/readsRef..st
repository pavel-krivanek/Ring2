*Calypso-Ring2
readsRef: literalAssociation 
	"Answer whether the receiver loads the argument."
	^ self ast allChildren anySatisfy: [:each | 
		each isVariable and: [ each name = literalAssociation key ]]
	
	"self ast nodesDo: [ :node | 
		node isVariable and: [
			node parent isAssignment not and: [  
				(node binding =  literalAssociation)
					 		ifTrue: [^true]]]]. 
	^false"