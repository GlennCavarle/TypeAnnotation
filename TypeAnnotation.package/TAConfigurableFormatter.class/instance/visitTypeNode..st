as yet unclassified
visitTypeNode: aTypeNode
	aTypeNode needsParenthesis
		ifTrue: [ self writeParenthesisAround: [ codeStream nextPutAll: aTypeNode name ] ]
		ifFalse: [ codeStream nextPutAll: aTypeNode name ]