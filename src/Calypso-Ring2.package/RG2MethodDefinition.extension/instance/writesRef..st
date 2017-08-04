*Calypso-Ring2
writesRef: literalAssociation 
	"Answer whether the receiver stores into the argument."
	self ast nodesDo: [ :node | 
		node isVariable and: [
			node parent isAssignment and: [  
				(node parent variable = node) and: [  
					(node binding =  literalAssociation)
					 		ifTrue: [^true]]]]]. 
	^false