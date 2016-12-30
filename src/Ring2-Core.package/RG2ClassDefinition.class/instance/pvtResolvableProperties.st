private - backend access
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#metaclass -> metaclass. 
		#localMethods -> localMethods. 
		#comment -> comment. 
		#classVariables -> classVariables. 
		#category -> category. 
		#package -> package. 
		#sharedPools -> sharedPools. 
		#tagsForMethods -> tagsForMethods. 
		#tags -> tags. 
	}
	
	
