as yet unclassified
visitTypedMethodNode: aTypedMethodNode
	self visitMethodNode: aTypedMethodNode.
	aTypedMethodNode type acceptVisitor: self.