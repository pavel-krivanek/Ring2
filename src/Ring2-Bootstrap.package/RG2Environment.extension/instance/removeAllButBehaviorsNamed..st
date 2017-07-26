*Ring2-Bootstrap
removeAllButBehaviorsNamed: collectionOfNames

	| toDelete |
	toDelete := self ask behaviors select: [ :each |
		(collectionOfNames includes: each instanceSide name) not ].
	toDelete do: [ :each | self removeBehavior: each ].
