as yet unclassified
findSuitableParentIn: anRGEnvironment

	^ anRGEnvironment packages detect: [:package |
		package name = self package name ] 