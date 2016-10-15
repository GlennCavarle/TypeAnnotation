as yet unclassified
visitSequenceNode: aSequenceNode
	aSequenceNode temporaries
		do:
			[ :temporary | 
			temporary acceptVisitor: self.
			self addStyle: #patternTempVar forNode: temporary ].
	aSequenceNode statements do: [ :each | self visitNode: each ]