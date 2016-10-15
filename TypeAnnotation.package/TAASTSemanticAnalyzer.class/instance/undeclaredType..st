as yet unclassified
undeclaredType: aTypeNode
	^ OCUndeclaredVariableWarning new
		node: aTypeNode;
		compilationContext: compilationContext;
		signal