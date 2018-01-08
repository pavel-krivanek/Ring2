Extension { #name : #MCMethodDefinition }

{ #category : #'*Ring2-Bootstrap' }
MCMethodDefinition >> methodSummary [

	^ classIsMeta 
		ifFalse: [ className asString , '>>#' , selector asString ]
		ifTrue: [ className asString , ' class>>#' , selector asString ]

	
]
