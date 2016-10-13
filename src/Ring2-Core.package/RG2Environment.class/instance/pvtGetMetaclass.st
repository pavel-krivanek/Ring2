private - backend interface
pvtGetMetaclass

	^ behaviors detect: [ :each | each name = #'Metaclass']