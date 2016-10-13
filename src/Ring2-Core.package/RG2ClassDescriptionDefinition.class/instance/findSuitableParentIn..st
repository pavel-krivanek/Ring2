as yet unclassified
findSuitableParentIn: aRG2Environment

	^ aRG2Environment packages detect: [:package |
		package name = self package name ] 