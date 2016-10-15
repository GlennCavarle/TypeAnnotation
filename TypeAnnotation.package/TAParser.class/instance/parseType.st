parsing types
parseType
	| typeNode |
	currentToken value = $(
		ifTrue: [ ^ self parseBlockClosureType ].	"It is a BlockClosure Type"
	currentToken isIdentifier 
		ifFalse: [ ^ nil ].
	typeNode := self parsePrimitiveType.

	currentToken value = ${
		ifTrue: [ ^ self parseParametrizedTypeFromNode: typeNode ].	"It is a Parametrized Type"
	^ typeNode