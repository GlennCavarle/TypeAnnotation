parsing types
parsePrimitiveType
	| token |
	token := currentToken.
	self step.
	^ self typeNodeClass identifierNamed: token value at: token start