as yet unclassified
scanType
	| c start |
	start := sourcePosition.
	[ (c := self nextChar) isAlphaNumeric or: [ #($) $< $>) includes: c ] ] whileTrue.
	currentToken := source copyFrom: start to: sourcePosition - 1.
	currentTokenSourcePosition := start