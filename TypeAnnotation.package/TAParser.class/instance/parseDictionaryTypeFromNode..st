parsing types
parseDictionaryTypeFromNode: aKeyTypeNode
	| valueTypeNode |
	(self is: currentToken directNextOf: aKeyTypeNode)
		ifFalse: [ ^ nil ].
	(self is: currentToken directPrevOf: self nextToken)
		ifFalse: [ ^ nil ].
	(currentToken value = '->')
		ifFalse: [ ^ nil ].
	self step.
	valueTypeNode := self parseInnerType.
	^ self dictionaryTypeNodeClass
		keyType: aKeyTypeNode
		valueType: valueTypeNode
		start: aKeyTypeNode start