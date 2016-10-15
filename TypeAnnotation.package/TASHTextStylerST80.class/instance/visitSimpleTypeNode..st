as yet unclassified
visitSimpleTypeNode: aSimpleTypeNode
	aSimpleTypeNode isInnerType
		ifTrue: [ self addStyle: #innerType forNode: aSimpleTypeNode ]
		ifFalse: [ self addStyle: #type forNode: aSimpleTypeNode ]