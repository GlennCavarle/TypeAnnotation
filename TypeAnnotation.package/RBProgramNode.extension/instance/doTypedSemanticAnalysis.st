*TypeAnnotation
doTypedSemanticAnalysis
	self methodNode ifNil: [ ^self ].
	^ self methodNode doTypedSemanticAnalysis.