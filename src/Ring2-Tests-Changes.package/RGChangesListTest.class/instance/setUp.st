running
setUp

	super setUp.
	
	class := RGClass unresolved.
	list := RGChangesList in: (RGChangeRecorder for: class environment).
	change1 := RGBehaviorAddition for: class in: list recorder.
	change2 := RGBehaviorNameResolvedChange for: class newName: #SomeClass in: list recorder.
	change3 := RGBehaviorNameChange for: class oldName: #SomeClass newName: #NewName in: list recorder.