*Ring2-Bootstrap
methodSummary

	^ classIsMeta 
		ifFalse: [ className asString , '>>#' , selector asString ]
		ifTrue: [ className asString , ' class>>#' , selector asString ]

	