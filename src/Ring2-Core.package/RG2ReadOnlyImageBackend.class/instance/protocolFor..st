method
protocolFor: aRG2MethodDefinition 

	| realMethod realProtocol id |
	
	realMethod := self realMethodFor: aRG2MethodDefinition.
	realProtocol := (Protocol name: realMethod protocol). 
	
	"real protocols are not unique, create uniqe ID from class and protocol name"
	id := ('protocol:', aRG2MethodDefinition parent name, ':', realProtocol name) asSymbol.
	^ self definitionFor: id ifAbsentRegister: [ 
		realProtocol asRing2MinimalDefinitionIn: aRG2MethodDefinition environment parent: aRG2MethodDefinition parent].
	
