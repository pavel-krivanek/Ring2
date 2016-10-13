tests
testRemovePackage
	
	| method class |

	method := RG2MethodDefinition unnamed.
	class := method parent.
	
	method package: (RG2PackageDefinition named: 'SomePackage' parent: method environment).
	
	self assert: (method parent package ~~ method package).
	self assert: method environment ask packages size equals: 3.
	
	method package: method parent package. "return it"

	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 3.
	
	method environment removeUnusedPackages.
	self assert: method environment ask packages size equals: 2.
	
	