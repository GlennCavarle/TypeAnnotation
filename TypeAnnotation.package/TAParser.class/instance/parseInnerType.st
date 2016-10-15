parsing types
parseInnerType
	^ currentToken value = $(
		ifTrue: [ self parseTypeWithParenthesis ]
		ifFalse: [ self parseType ]