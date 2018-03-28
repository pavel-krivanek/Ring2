instance creation
forChanges: changesCollection

	^ self new 
		prepareFor: changesCollection;
		yourself.