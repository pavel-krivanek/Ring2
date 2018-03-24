initialization
resolveOrigins

	"Try to resolve origin for all changes from the changes in the list"
	
	| unresolvedChanges |
	
	unresolvedChanges := Dictionary new.
	
	changes do: [ :each |
		each visitUnresolvedChanges: unresolvedChanges ]
	
		

	