as yet unclassified
prepareFor: changesCollection

	"pre-register all existing IDs to avoid conflicts of the newly generated IDs"

	changesCollection do: [ :each |
		each hasOriginId ifTrue: [ idsDictionary at: each originId put: nil ] ]