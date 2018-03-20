DONE
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#metaclass -> metaclass. 
		#localMethods -> localMethods. 
		#comment -> comment. 
		#classVariables -> classVariables. 
		#package -> package. 
		#sharedPools -> sharedPools. 
	}
	
	
