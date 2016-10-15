as yet unclassified
visitTypedVariableNode: aVariableNode
	self visitVariableNode: aVariableNode.
	aVariableNode isTyped
		ifTrue: [ self visitTypeNode: aVariableNode type ]