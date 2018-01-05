*Ring2-Core
createMethodDefinition
	"Retrieves a RGMethodDefinition object based on the data of the receiver"
	
	| aDefinition |
	
	aDefinition := RG2MethodDefinition named: self methodSelector.
	aDefinition parent name: self methodClassName.
	aDefinition
"		isMetaSide: meta;  "
		sourceCode: self string;
		protocol: category;
		"stamp: stamp;"
		yourself.
	^ aDefinition