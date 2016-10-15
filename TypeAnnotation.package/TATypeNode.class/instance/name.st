as yet unclassified
name
	^ self needsParenthesis
		ifTrue: [ '(' , self computedName , ')' ]
		ifFalse: [ self computedName ]