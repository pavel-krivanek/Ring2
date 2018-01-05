*Ring2-Compatibility
<= aRG2MethodDefinition 
	
	self parent name < aRG2MethodDefinition parent name ifTrue: [^true].
	self parent name > aRG2MethodDefinition parent name ifTrue: [^false].
	
	^(self selector < aRG2MethodDefinition selector) 
 		  or: [ (self selector == aRG2MethodDefinition selector) and: [
    			  self time <= aRG2MethodDefinition time ]]