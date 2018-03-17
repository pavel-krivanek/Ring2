tests
testPackages
	
	| method class |

	" implicit environment "
	method := RG2Method unnamed.

	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 2.
	
	" adding to existing class definition "
	class := RG2ClassOld unnamed.
	method := RG2Method parent: class.
	class addLocalMethod: method.
	
	self assert: (method parent package == method package).
	self assert: method environment ask packages size equals: 2.

	" adding to existing class definition with package "
	class := RG2ClassOld unnamed.
	method := RG2Method parent: class.
	class addLocalMethod: method.
	method package: (RG2Package named: 'SomePackage' parent: method environment).
	
	self assert: (method parent package ~~ method package).
	self assert: method environment ask packages size equals: 3.

	