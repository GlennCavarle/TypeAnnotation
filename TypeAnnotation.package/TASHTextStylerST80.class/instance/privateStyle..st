as yet unclassified
privateStyle: aText
	| ast |
	ast := self parse: aText isMethod: classOrMetaClass isNil not.
	ast doTypedSemanticAnalysis.
	self style: aText ast: ast.
	^ aText