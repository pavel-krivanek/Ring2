private - backend interface
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#classTrait -> classTrait. 
		#comment -> comment. 
		#category -> category. 
		#package -> package. 
   	}
	
	