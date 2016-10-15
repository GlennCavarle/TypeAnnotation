as yet unclassified
writeParenthesisAround: aBlock
	codeStream nextPut: $(.
	aBlock value.
	codeStream nextPut: $)