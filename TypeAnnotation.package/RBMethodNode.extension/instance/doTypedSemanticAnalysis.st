*TypeAnnotation
doTypedSemanticAnalysis
	self compilationContext ifNil: [ self methodClass: nil class ].
	TAASTSemanticAnalyzer new
		compilationContext: self compilationContext;
		analyze: self