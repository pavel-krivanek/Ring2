accessing
resolve: aCollectionOfChanges

	^ aCollectionOfChanges collect: [ :each | each acceptVisitor: self ].