as yet unclassified
parseTypeExpression: aString
	| parser node |
	node := TATypedVariableNode new.
	parser := self new.
	parser initializeParserWith: aString.
	parser parseIdentifierTypeFor: node.
	^ node type