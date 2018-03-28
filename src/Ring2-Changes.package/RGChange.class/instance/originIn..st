as yet unclassified
originIn: idsDictionary

	^ self originIn: self originId ifAbsent: [ RGResolvingError signal ] 