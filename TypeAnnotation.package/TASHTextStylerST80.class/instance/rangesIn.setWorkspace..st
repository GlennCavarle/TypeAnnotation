as yet unclassified
rangesIn: aText setWorkspace: aBoolean
	parser ifNil: [ parser := TASHParserST80 new on: (view ifNotNil: [ view model ]) ].

	^ parser
		rangesIn: aText asString
		classOrMetaClass: classOrMetaClass
		workspace:
			(aBoolean
				ifTrue: [ workspace ])
		environment: environment