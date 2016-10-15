as yet unclassified
visitSimpleTypeNode: aTypeNode

	aTypeNode isSmalltalkType
		ifFalse: [ self undeclaredType: aTypeNode ]