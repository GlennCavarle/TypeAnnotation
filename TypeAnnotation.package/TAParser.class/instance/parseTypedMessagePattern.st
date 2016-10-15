as yet unclassified
parseTypedMessagePattern
	| aNode aType |
	currentToken isLiteralToken
		ifTrue: [ self patchLiteralMessage ].
	
	aType := self parseTypeWithParenthesis.
	
	aNode := currentToken isIdentifier
		ifTrue: [ self parseUnaryPattern ]
		ifFalse: [ currentToken isKeyword
				ifTrue: [ self parseKeywordPattern ]
				ifFalse: [ self parseBinaryPattern ] ].
	aNode type: aType.
	^ aNode