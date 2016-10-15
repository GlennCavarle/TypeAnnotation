as yet unclassified
computedName
	^ '(' ,
		((self typeArguments collect: [ :each | each name ]) fold: [ :a :b | a , ',' , b ]) , ')=>'
		, self returnType name