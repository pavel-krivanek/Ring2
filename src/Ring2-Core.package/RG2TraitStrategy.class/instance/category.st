private - backend access
category

	^ self tags 
		ifEmpty: [ self package categoryName ]
		ifNotEmpty: [ 
			(self package hasResolved: #name) 
				ifTrue: [ self package categoryName, '-', self tags first  ]
				ifFalse: [ self tags first  ]	] 
	
	"todo"