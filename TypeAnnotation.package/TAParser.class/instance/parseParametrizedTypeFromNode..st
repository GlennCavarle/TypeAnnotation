parsing types
parseParametrizedTypeFromNode: aTypeNode
	| start tmpArgType argTypes |
	argTypes := OrderedCollection new.
	currentToken value = ${
		ifFalse: [ ^ nil ].
	start := aTypeNode start.
	self step.
	[ tmpArgType := self parseInnerType ]
		whileNotNil:
			[ 
			tmpArgType beInnerType.
			argTypes add: tmpArgType.
			(#(#, $}) includes: currentToken value)
				ifFalse: [ ^ nil ].
			argTypes size > 2
				ifTrue: [ ^ nil ].
			self step ].
	argTypes size > 1
		ifFalse: [ ^ self collectionTypeNodeClass type: aTypeNode typeArgument: argTypes first start: start ].
	^ self dictionaryTypeNodeClass type: aTypeNode typeArguments: argTypes start: start