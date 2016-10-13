tests
testPackages
	
	| method class |

	" implicit environment "
	method := RG2MethodDefinition unnamed.

	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 2.
	
	" adding to existing class definition "
	class := RG2ClassDefinition unnamed.
	method := RG2MethodDefinition parent: class.
	class addLocalMethod: method.
	
	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 2.

	" adding to existing class definition with package "
	class := RG2ClassDefinition unnamed.
	method := RG2MethodDefinition parent: class.
	class addLocalMethod: method.
	method package: (RG2PackageDefinition named: 'SomePackage' parent: method environment).
	
	self assert: (method parent package ~~ method package).
	self assert: method environment ask packages size equals: 3.

	