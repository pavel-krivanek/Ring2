*Ring2-Experiments
findSuitableParentIn: anRGEnvironment

	^ anRGEnvironment packages detect: [:package |
		package name = self package name ] 