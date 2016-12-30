*Calypso-Ring2
>> aMessageName

	^ self methods detect: [ :each | each selector = aMessageName ]