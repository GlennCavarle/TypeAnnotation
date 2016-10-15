as yet unclassified
visitTypedArgumentNode: aTypedArgumentNode
	self visitArgumentNode: aTypedArgumentNode.
	aTypedArgumentNode type acceptVisitor: self