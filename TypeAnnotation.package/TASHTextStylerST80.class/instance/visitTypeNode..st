as yet unclassified
visitTypeNode: aTypeNode
	aTypeNode isNullType ifTrue:[^self].
	self addStyle:  #leftTypeParenthesis from: aTypeNode start-1 to: aTypeNode start-1.
	aTypeNode acceptVisitor: self.
	self addStyle:  #rightTypeParenthesis from: aTypeNode stop+1 to: aTypeNode stop+1.