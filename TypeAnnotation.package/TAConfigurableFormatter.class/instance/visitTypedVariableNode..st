as yet unclassified
visitTypedVariableNode: aTypedVariableNode
	self visitVariableNode: aTypedVariableNode.
	aTypedVariableNode isTyped
		ifTrue:
			[ self writeParenthesisAround: [ aTypedVariableNode type acceptVisitor: self ] ]