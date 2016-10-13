instance creation
named: aName

	"create model in its own environment"

	^self new
		pvtName: aName;
		yourself