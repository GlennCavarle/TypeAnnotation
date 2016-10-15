parsing types
parseCollectionTypeFromNode: aTypeNode
	(self is: currentToken directNextOf: aTypeNode)
		ifFalse: [ ^ nil ].
	(self is: currentToken directPrevOf: self nextToken)
		ifFalse: [ ^ nil ].
	(currentToken value = $[ and: [ self nextToken value = $] ])
		ifFalse: [ ^ nil ].
	self step.	"]"
	self step.	") or ,"
	^ self collectionTypeNodeClass named: aTypeNode name start: aTypeNode start