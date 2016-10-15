as yet unclassified
visitTemporaryNode: aNode
	codeStream nextPutAll: aNode name.
	aNode isTyped
		ifTrue: [ self writeParenthesisAround: [ aNode type acceptVisitor: self ] ]