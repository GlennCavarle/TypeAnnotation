parsing types
parseBlockClosureType
	| start tmpArgType argTypes returnType |
	argTypes := OrderedCollection new.
	currentToken value = $(
		ifFalse: [ ^ nil ].
	start := currentToken start.
	self step.
	[ tmpArgType := self parseInnerType ]
		whileNotNil:
			[ 
			argTypes add: tmpArgType.
			(currentToken value = #, or: [ currentToken value = $) ])
				ifFalse: [ ^ nil ].
			self step ].
	currentToken value = '=>'
		ifFalse: [ ^ nil ].
	self step.
	returnType := self parseInnerType.
	^ self blockClosureTypeNodeClass typeArguments: argTypes returnType: returnType start: start