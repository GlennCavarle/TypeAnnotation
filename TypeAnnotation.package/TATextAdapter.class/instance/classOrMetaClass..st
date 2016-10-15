as yet unclassified
classOrMetaClass: aClass
	aClass
		ifNil: [ self widget beForPlainText ]
		ifNotNil: [ 
			self widget
				beForTypedSmalltalkCode;
				classOrMetaClass: aClass ]