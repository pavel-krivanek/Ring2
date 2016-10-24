cleaning
cleanUnusedUnreferencedBehaviors

	"remove behaviors that are not linked in the graph of the named behaviors"
	
	| referenced unreferenced newelyAdded |
	
	referenced := IdentitySet new.
	self ask behaviorsDo: [ :each |
		(each hasResolved: #name) ifTrue: [ 
			referenced add: each.
			referenced addAll: (each referencedBehaviors copyWithout: each) ]  ].
	[	newelyAdded := IdentitySet new.
		referenced do: [ :each | 
			each referencedBehaviors do: [ :ref |
				(referenced includes: ref) ifFalse: [
					referenced add: ref.
					newelyAdded add: ref]]].
		newelyAdded isEmpty ] whileFalse.

	unreferenced := (self ask behaviors copyWithoutAll: referenced).

	unreferenced do: [:each | self removeBehavior: each  ].
	
	^ unreferenced