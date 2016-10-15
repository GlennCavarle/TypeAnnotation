as yet unclassified
parsePrimitiveIdentifier
	| token node |
	token := currentToken.
	node := self variableNodeClass identifierNamed: token value at: token start.
	self addCommentsTo: node.
	(self nextToken value = $( and: [ currentToken stop + 1 = self nextToken start ])
		ifTrue: [ 
			self step.
			self parseIdentifierTypeFor: node ] ifFalse:[self step].
	
	^ node