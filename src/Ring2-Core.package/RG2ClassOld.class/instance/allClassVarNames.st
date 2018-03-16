queries - variables
allClassVarNames

	^self allClassVariables collect:[ :cvar| cvar name ]