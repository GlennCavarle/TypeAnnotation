as yet unclassified
visitTypedMethodNode: aTypedMethodNode
	aTypedMethodNode isTyped
		ifTrue:
			[ self writeParenthesisAround: [ aTypedMethodNode type acceptVisitor: self ] ].
	self visitMethodNode: aTypedMethodNode