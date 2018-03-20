private - backend access
category

	^ self owner tags 
		ifEmpty: [ self owner package categoryName ]
		ifNotEmpty: [ 
			(self package hasResolved: #name) 
				ifTrue: [ self owner package categoryName, '-', self owner tags first  ]
				ifFalse: [ self owner tags first  ]	] 
	
	"todo"