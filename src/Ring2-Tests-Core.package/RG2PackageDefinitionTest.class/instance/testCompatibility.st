tests - new
testCompatibility

	| package1 package2 |
	
	package1 := RG2Package named: 'package1'.
	package2 := RG2Package named: 'package2'.	
	self deny: (package1 compatibleWith: package2).

	package1 := RG2Package named: 'package'.
	package2 := RG2Package named: 'package'.	
	self assert: (package1 compatibleWith: package2).

	package1 := RG2Package unnamed.
	package2 := RG2Package unnamed.
	self assert: (package1 compatibleWith: package2).
	
	package1 := RG2Package named: 'package1'.
	package2 := RG2Package unnamed.
	self assert: (package1 compatibleWith: package2).

	package1 := RG2Package unnamed.
	package2 := RG2Package named: 'package2'.
	self assert: (package1 compatibleWith: package2).		
			
	package1 := RG2Package unnamed.
	package1 cleanDefinedBehaviors.
	package2 := RG2Package unnamed.
	package2 cleanDefinedBehaviors.
	self assert: (package1 compatibleWith: package2).


