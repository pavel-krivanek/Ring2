repository := MCFileTreeRepository new
	directory: './mini2' asFileReference;
	yourself.
	
environment := repository asRing2Environment.		

environment removeAllButBehaviorsNamed: usedClasses.
environment removeAllButMethodsNamed: calledMethods.

environment removeEmptyMethodTags.
environment fixProtoObjectClassSuperclass.
environment addGlobalsNamed: #(#Smalltalk #SourceFiles #Transcript #Undeclared #Display #TextConstants  #Sensor #Processor #SystemOrganization).
environment clean.
	
environment bootstrap.



