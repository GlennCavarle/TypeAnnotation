as yet unclassified
defaultStyler
	^ ((Smalltalk at: #TASHTextStylerST80) ifNil: [ ^nil ]) new view: self; yourself