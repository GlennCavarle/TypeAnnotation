as yet unclassified
visitTypedVariableNode: aTypedVariableNode
	self visitVariableNode: aTypedVariableNode.
	aTypedVariableNode type acceptVisitor: self