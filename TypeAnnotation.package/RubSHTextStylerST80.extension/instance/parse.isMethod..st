*TypeAnnotation
parse: aText isMethod: isMethod
	|root|
	
	isMethod 
		ifTrue: [
			[root := TAParser parseFaultyMethod: aText asString.
			root methodNode methodClass: classOrMetaClass.
			^root] 
				on: Error 
				do: [^TAParser parseFaultyExpression: aText asString]]
		ifFalse:[ ^TAParser parseFaultyExpression: aText asString ].