parsing types
parseTypeWithParenthesis
	| typeNode |
	currentToken value = $(
		ifFalse: [ ^ nil ].	"It is not a Type"
	self step.
	typeNode := self parseType.
	self step.
	^ typeNode