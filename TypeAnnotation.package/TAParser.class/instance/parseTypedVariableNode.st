as yet unclassified
parseTypedVariableNode
	| aNode |
	currentToken isIdentifier
		ifFalse: [ ^ self parserError: 'Variable name expected' translated ].
	aNode := self parsePrimitiveIdentifier.
	^ aNode