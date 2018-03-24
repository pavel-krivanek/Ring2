as yet unclassified
findSuitableParentIn: aRGEnvironment

	^ aRGEnvironment packages detect: [:package |
		package name = self package name ] 