Extension { #name : #RGPackageDefinitionTest }

{ #category : #'*Ring2-Experiments' }
RGPackageDefinitionTest >> testCompatibility [

	| package1 package2 |
	
	package1 := RGPackageDefinition named: 'package1'.
	package2 := RGPackageDefinition named: 'package2'.	
	self deny: (package1 compatibleWith: package2).

	package1 := RGPackageDefinition named: 'package'.
	package2 := RGPackageDefinition named: 'package'.	
	self assert: (package1 compatibleWith: package2).

	package1 := RGPackageDefinition unnamed.
	package2 := RGPackageDefinition unnamed.
	self assert: (package1 compatibleWith: package2).
	
	package1 := RGPackageDefinition named: 'package1'.
	package2 := RGPackageDefinition unnamed.
	self assert: (package1 compatibleWith: package2).

	package1 := RGPackageDefinition unnamed.
	package2 := RGPackageDefinition named: 'package2'.
	self assert: (package1 compatibleWith: package2).		
			
	package1 := RGPackageDefinition unnamed.
	package1 cleanDefinedBehaviors.
	package2 := RGPackageDefinition unnamed.
	package2 cleanDefinedBehaviors.
	self assert: (package1 compatibleWith: package2).



]
