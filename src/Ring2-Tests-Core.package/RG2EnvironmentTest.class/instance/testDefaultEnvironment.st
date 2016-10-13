tests
testDefaultEnvironment

	| env  | 
	
	env := RG2Environment new.
	env createDefaultEnvironment.
	
	self assert: (env ask behaviors collect: #name) asSortedCollection equals: #(#Behavior #'Behavior class' #Class #'Class class' #ClassDescription #'ClassDescription class' #Metaclass #'Metaclass class' #Object #'Object class' #ProtoObject #'ProtoObject class') asSortedCollection.