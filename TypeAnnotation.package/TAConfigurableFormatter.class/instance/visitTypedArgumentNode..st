as yet unclassified
visitTypedArgumentNode: aTATypedArgumentNode
	self visitArgumentNode: aTATypedArgumentNode.
	aTATypedArgumentNode isTyped
		ifTrue:
			[ self writeParenthesisAround: [ aTATypedArgumentNode type acceptVisitor: self ] ]