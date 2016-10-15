as yet unclassified
parseTemps
	| temps |
	temps := OrderedCollection new.
	[ currentToken isIdentifier ]
		whileTrue:
			[ 
			| aNode |
			aNode := self parsePrimitiveIdentifier.
			temps add: aNode ].
	^ temps