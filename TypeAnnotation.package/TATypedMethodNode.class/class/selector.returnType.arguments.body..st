as yet unclassified
selector: aSymbol returnType: aTypeNode arguments: variableNodes body: aSequenceNode
	^ self new
		type: aTypeNode;
		arguments: variableNodes;
		selector: aSymbol;
		body: aSequenceNode;
		yourself