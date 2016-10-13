private - backend interface
pvtGetObjectClass

	^ behaviors detect: [ :each | each name = #'Object class']