as yet unclassified
analyze: aNode
	self visitNode: aNode.
	TAASTClosureAnalyzer new visitNode: aNode