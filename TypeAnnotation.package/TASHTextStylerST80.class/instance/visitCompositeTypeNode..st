as yet unclassified
visitCompositeTypeNode: aCompositeTypeNode
	aCompositeTypeNode type acceptVisitor: self.
	aCompositeTypeNode typeArguments do: [ :each | each acceptVisitor: self ]